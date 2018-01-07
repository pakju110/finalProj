package hta.controll;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hta.model.Menu;
import hta.model.ShopData;
import hta.pay.model.PayRepository;
import hta.shop.model.CartRepository;
import hta.shop.model.CartVo;
import hta.shop.model.MenuChange;
import hta.shop.model.MenuRepository;
import hta.shop.model.MenuVo;
import hta.shop.model.OrderVo;
import hta.shop.model.ReviewVo;
/*import hta.shop.model.OptionRepository;*/
/*import hta.shop.model.OptionVo;*/
import hta.shop.model.ShopRepository;
import hta.shop.model.ShopVo;
import hta.user.model.UserVo;

@Controller
@RequestMapping("yeogiyo/shop/{cate2}/{service}")
public class ShopController {

	@Resource
	MyProvider provider;

	@Resource
	ShopData data;

	@Resource
	ShopRepository dao;

	@Resource
	MenuRepository menu;

	@Resource
	CartRepository cart;

	ShopVo sovo;
	MenuVo mevo;
	CartVo cavo;
	ReviewVo revo;
	/* OptionVo oppvo; */
	String id;
	UserVo loginuser;
	OrderVo orvo;
	Integer orderno; 
	
	@ModelAttribute("data")
	ShopData data(@PathVariable String cate2,
			@PathVariable String service,
			ShopVo shopVo, MenuVo menuVo,
			CartVo cartVo,
			ReviewVo reviewVo,
			/* OptionVo optionVo, */
			MenuChange menuChange,
			HttpServletRequest request,
			HttpSession session) {

		data.setRedirect(false);

		data.setCate1("shop");
		data.setCate2(cate2);
		data.setService(service);
		data.setRequest(request);
		data.setSession(session);
		data.setMenuChange(menuChange);

		menu();
		data.setCart(cartVo);
		data.setDd(shopVo);
		data.setDd2(menuVo);
		data.setReview(reviewVo);
		revo = reviewVo;
		System.out.println("빈 가져온거??" + data.getDd());
		System.out.println("빈 가져온거222222222??" + data.getDd2());
		
		System.out.println("shop 진입성공:" + data);
		// sovo = (ShopVo)data.getDd();
		sovo = shopVo;
		mevo = menuVo;
		cavo = cartVo;
		/* oppvo = optionVo; */
		if (data.getSession().getAttribute("loginuser") != null) {
			loginuser = (UserVo) data.getSession().getAttribute("loginuser");
			id = loginuser.getUser_id();
			
		}
		switch (data.getService()) {
		case "list":
			if(!data.getCate2().equals("all")) {
				list2();
			}else {
				list();
			}
			
			break;
		case "view":
			view();
			break;
		case "modify":
			modify();
			break;
		case "deleteReg":
			delete();
			break;
		case "reg":
			reg();
			break;
		case "menuinsert":
			menuinsert();
			break;
		case "menuplus":
			menuplus();
			break;
		case "modifyForm":
			modifyForm();
			break;
		case "menumodifyForm":
			menumodifyForm();
			break;
		case "menumodify":
			menumodify();
			break;
		case "menudelte":
			menudelte();
			break;
		case "orderoption":
			orderoption();
			break;
		case "removeoption":
			removeoption();
			break;
		case "allremove":
			allremove();
			break;
		case "payinsert":
			payinsert();
			break;
			
		case "reviewinsert":
			reviewinsert();
			break;
			
		case "reviewdelete":
			reviewdelete();
			break;
			
		}

		return data;

	}
	
	void reviewinsert() 
	{	
		orvo =  new OrderVo();
		orvo.setRest_id(revo.getRest_id());
		orvo.setUser_id(id);
		System.out.println("\n\n\n\n\n\nTESTsovo.getId()\n\n\n\n"+sovo.getRest_id()+"\n\n\n\n\n\n\n"+orvo+"\n\n\n\n\n"+dao.maxno2(orvo));
		orderno = dao.maxno2(orvo);
		System.out.println("\n\n\n\n\n"+revo+"\n\n\n\n\n");
		revo.setOrderno(orderno);
		if(orderno != null) {
			if(dao.reviewcheck(orderno)) {
				
			}else {
				fileupload3(revo, data.getRequest());
				dao.reviewinsert(revo);
				sovo.setRest_id(revo.getRest_id());
				sovo.setStar(dao.staravg(revo.getRest_id()));
				dao.reviewshopmodify(sovo);
			}
		}
		data.setRedirect(true);
		data.setPath("redirect:view?id=" + sovo.getRest_id());
		System.out.println("\n\n\n\n\n리뷰인설트\n\n\n\n\n"+revo+"\n\n\n\n" +sovo);
		data.setDd(dao.detail(sovo));
	}
	void reviewdelete() {
		ReviewVo revo2 =  new ReviewVo();
		revo2.setUser_id(id);
		revo2.setOrderno(orderno);
		revo = dao.reviewDetail(revo2);
		
		if(id == revo.getUser_id()) {
			dao.reviewdelete(orderno);
		}
		
	}
	void payinsert() {
		/*ArrayList<CartVo> res = (ArrayList<CartVo>)data.getCart();
		data.setRedirect(true);
		data.setPath("redirect:../../pay/list?id=" + res.get(0).getId());
		data.setDd(dao.detail(sovo));*/
		
	}

	void menumodify() {

		data.setRedirect(true);

		ArrayList<MenuVo> res = data.getMenuChange().getMm();

		for (int i = 0; i < res.size(); i++) {
			MenuVo vo = res.get(i);
			menu.modify(vo);
			System.out.println(res.get(i));

		}

		data.setPath("redirect:view?id=" + res.get(0).getId());
		data.setDd(dao.detail(sovo));
	}

	void menudelte() {

		ArrayList<MenuVo> res = data.getMenuChange().getMm();

		for (int i = res.size() - 1; i > 0; i--) {
			int no = Integer.parseInt(data.getRequest().getParameter("no"));
			MenuVo vo = res.get(i);

			if (no == vo.getNo()) {
				res.remove(i);
				menu.delete(vo);
				CartVo cv = new CartVo();
				cv.setNo(no);
				cart.delete3(cv);
				MenuChange ch = new MenuChange();
				ch.setMm(res);
				data.setMenuChange(ch);
			}

		}
		data.setRedirect(true);
		data.setPath("redirect:menumodifyForm?id=" + sovo.getRest_id());
		data.setDd(dao.detail(sovo));
		data.setDd2(menu.list(sovo.getRest_id()));

	}

	// hta.model에 Topmenu로 뺌
	void menu() {

		HashMap<String, ArrayList<Menu>> subMenu = new HashMap<>();

		subMenu.put("shop", new ArrayList<>());

		subMenu.get("shop").add(new Menu("all", "전체", "list"));
		subMenu.get("shop").add(new Menu("chicken", "치킨", "list"));
		subMenu.get("shop").add(new Menu("pizza", "피자", "list"));
		/*
		 * subMenu.get("down").add(new Menu("tv", "tv", "list"));
		 */

		data.setSubMenu(subMenu.get(data.getCate1()));
	}

	void delete() {
		data.setRedirect(true);

		if (dao.idPwChk(sovo) != null) {
			// fileupload(vo, request);
			data.setDd(dao.delete(sovo));
		}
		data.setPath("redirect:list");
		data.setDd(dao.detail(sovo));
	}

	void deleteForm() {
		data.setDd(sovo.getRest_id());
	}

	void reg() {
		if(loginuser.getGrade() == "w") {
		System.out.println("진입확인" + sovo);

		fileupload(sovo, data.getRequest());
		dao.insert(sovo);

		data.setRedirect(true);
		data.setPath("redirect:view?id=" + sovo.getRest_id());
		dao.detail(sovo);
		}

	}

	void view() {
		System.out.println("sovo view들어가라ㅏ 좀 ");
		data.setDd(dao.detail(sovo));
		data.setDd2(menu.list(sovo.getRest_id()));
		CartVo cavo = new CartVo();
		cavo.setId(id);
		cavo.setRest_id(sovo.getRest_id());
		data.setReview(dao.reviewlist(sovo.getRest_id()));
		
		if (id != null) {
			
			
			data.setCart(cart.list(cavo));
			if(loginuser.getGrade().equals("u")) {
				orvo =  new OrderVo();
				orvo.setRest_id(sovo.getRest_id());
				orvo.setUser_id(id);
				System.out.println("\n\n\n\n\n\nTESTsovo.getId()\n\n\n\n"+sovo.getRest_id()+"\n\n\n\n\n\n\n"+orvo+"\n\n\n\n\n"+dao.maxno2(orvo));
				orderno = dao.maxno2(orvo);
				if(orderno != null ) {
					ReviewVo revo2 =  new ReviewVo();
					revo2.setUser_id(id);
					revo2.setOrderno(orderno);
					if(dao.reviewcheck2(revo2))
						data.getSession().setAttribute("reviewgrade", false);
					else
						data.getSession().setAttribute("reviewgrade", true);
				}
				
				// 리뷰 쓸 권한 있는 지 체크
			}
		}
	}

	void orderoption() {
		int a = Integer.parseInt(data.getRequest().getParameter("no"));
		MenuVo ss = new MenuVo();
		ss.setNo(a);
		ss = menu.detail(ss);
		CartVo ca = cavo;
		if (id != null) {
			ca.setRest_id(sovo.getRest_id());
			ca.setId(id);
			ca.setName(ss.getName());
			ca.setNo(ss.getNo());
			ca.setPrice(ss.getPrice());
			if (cart.detail(cavo) != null) {
				ca = cart.detail(ca);

				ca.setCnt(ca.getCnt() + 1);
				ca.setPrice((ca.getPrice() / (ca.getCnt() - 1)) * ca.getCnt());
				cart.modify(ca);
			} else {
				ca.setCnt(1);
				cart.insert(ca);
			}
		}
		
		System.out.println("\n\n\n\n"+ca+"\n\n\n");

		data.setRedirect(true);
		data.setPath("redirect:view?id=" + sovo.getRest_id());
	}

	void removeoption() {
		int a = Integer.parseInt(data.getRequest().getParameter("no"));
		/*String rest_id = data.getRequest().getParameter("id");*/
		String rest_id = sovo.getRest_id(); 
		CartVo ca = cavo;
		ca.setRest_id(rest_id);
		ca.setId(id);
		ca.setNo(a);

		ca = cart.detail(ca);

		if (ca.getCnt() <= 1) {
			cart.delete2(ca);
		} else {
			ca.setPrice((ca.getPrice() / ca.getCnt()) * (ca.getCnt() - 1));
			ca.setCnt(ca.getCnt() - 1);

			cart.modify(ca);
		}

		data.setRedirect(true);
		data.setPath("redirect:view?id=" + sovo.getRest_id());
	}

	void allremove() {
		CartVo ca = cavo;
		String rest_id = data.getRequest().getParameter("id");
		ca.setRest_id(rest_id);
		ca.setId(id);
		cart.delete(ca);
		data.setCart(null);
		data.setRedirect(true);
		data.setPath("redirect:view?id=" + sovo.getRest_id());
	}

	void modify() {

		data.setRedirect(true);
		
		if (dao.idPwChk(sovo) != null) {
			// fileupload(vo, request);
			dao.modify(sovo);
			//data.setDd(dao.modify(sovo));
		}
		// data.setPath("redirect:view?id="+sovo.getId());

		data.setPath("redirect:view?id=" + sovo.getRest_id());
		data.setDd(dao.detail(sovo));
	}

	void modifyForm() {
		data.setDd(dao.detail(sovo));
	}

	void menumodifyForm() {
		data.setDd(dao.detail(sovo));
		data.setDd2(menu.list(sovo.getRest_id()));
	}

	void list() {
		data.setDd(dao.list());
	}
	void list2() {
		data.setDd(dao.typelist(data.getCate2()));
	}
	
	void fileupload(ShopVo vo, HttpServletRequest request) { // 파일 업로드 메소드 !!!!!!!!!!!!!! upfile = 파일정보,
	      // request = 업로드할 폴더정보
	      FileOutputStream fos;
	      vo.setOrifile(vo.getFf().getOriginalFilename());

	      try {
	         String outPath = request.getRealPath("/resources/img");
	         outPath = "C:\\projwork\\haeunju\\src\\main\\webapp\\resources\\img";
	         String realPath = outPath + "\\" + vo.getFf().getOriginalFilename();
	         File file = new File(realPath);
	         if (file.exists()) {
	            int count = 0;
	            int dot = vo.getOrifile().lastIndexOf(".");
	            String nameonly = vo.getOrifile().substring(0, dot);
	            String hwak = vo.getOrifile().substring(dot);

	            while (file.exists()) {
	               count++;
	               vo.setSysfile(nameonly + "_" + count + hwak);
	               realPath = outPath + "\\" + vo.getSysfile();

	               file = new File(realPath);
	            }
	         }

	         fos = new FileOutputStream(realPath);
	         vo.setOrifile(vo.getFf().getOriginalFilename());
	         vo.setSysfile(vo.getOrifile());
	         fos.write(vo.getFf().getBytes());
	         
	         fos.close();
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	   }

	void fileupload2(MenuVo vo, HttpServletRequest request) {

		 FileOutputStream fos;
	      vo.setOrifile(vo.getFf().getOriginalFilename());

	      try {
	         String outPath = request.getRealPath("/resources/img");
	         outPath = "C:\\projwork\\haeunju\\src\\main\\webapp\\resources\\img";
	         String realPath = outPath + "\\" + vo.getFf().getOriginalFilename();
	         File file = new File(realPath);
	         if (file.exists()) {
	            int count = 0;
	            int dot = vo.getOrifile().lastIndexOf(".");
	            String nameonly = vo.getOrifile().substring(0, dot);
	            String hwak = vo.getOrifile().substring(dot);

	            while (file.exists()) {
	               count++;
	               vo.setSysfile(nameonly + "_" + count + hwak);
	               realPath = outPath + "\\" + vo.getSysfile();

	               file = new File(realPath);
	            }
	         }

	         fos = new FileOutputStream(realPath);
	         vo.setOrifile(vo.getFf().getOriginalFilename());
	         vo.setSysfile(vo.getOrifile());
	         fos.write(vo.getFf().getBytes());
	         
	         fos.close();
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	}
	void fileupload3(ReviewVo vo, HttpServletRequest request) {

		 FileOutputStream fos;
	      vo.setOrifile(vo.getFf().getOriginalFilename());

	      try {
	         String outPath = request.getRealPath("/resources/img");
	         outPath = "C:\\projwork\\haeunju\\src\\main\\webapp\\resources\\img";
	         String realPath = outPath + "\\" + vo.getFf().getOriginalFilename();
	         File file = new File(realPath);
	         if (file.exists()) {
	            int count = 0;
	            int dot = vo.getOrifile().lastIndexOf(".");
	            String nameonly = vo.getOrifile().substring(0, dot);
	            String hwak = vo.getOrifile().substring(dot);

	            while (file.exists()) {
	               count++;
	               vo.setSysfile(nameonly + "_" + count + hwak);
	               realPath = outPath + "\\" + vo.getSysfile();

	               file = new File(realPath);
	            }
	         }

	         fos = new FileOutputStream(realPath);
	         vo.setOrifile(vo.getFf().getOriginalFilename());
	         vo.setSysfile(vo.getOrifile());
	         fos.write(vo.getFf().getBytes());
	         
	         fos.close();
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	}
	void test() {
		/* data.setDd(oppdao.list(0)); */
	}

	void menuinsert() {
		System.out.println("진입확인" + mevo);

		ArrayList<MenuVo> res = data.getMenuChange().getMm();
		for (int i = 0; i < res.size(); i++) {
			System.out.println(res.get(i));
			ShopVo vo = new ShopVo();
			vo.setRest_id(res.get(i).getId());
			sovo = dao.detail(vo);
			if (res.get(i).getFf() != null) {
				fileupload2(res.get(i), data.getRequest());
			}else {
				res.get(i).setOrifile("tqw");
				res.get(i).setSysfile("sadas");
			}
			
			
			System.out.println("\n\n\n\n메뉴생성!!!!!!!!"+res.get(i)+"\n\n\n\n");
			menu.insert(res.get(i));
			
			
			
			
		}
		/*
		 * ArrayList<OptionVo> oppres = data.getMenuChange().getOpp(); for(int i =0 ;
		 * i<oppres.size(); i++) { System.out.println(res.get(i));
		 * if(oppres.get(i).getName()!=null) {
		 * oppres.get(i).setMenuno(res.get(i).getNo());
		 * System.out.println(oppres.get(i)); oppdao.insert(oppres.get(i)); } }
		 */
		data.setRedirect(true);
		System.out.println("----!!!----!!!---!!!------\n\n\n\n\n\n\n" + sovo);
		data.setPath("redirect:view?id=" + sovo.getRest_id());
		dao.detail(sovo);
	}

	void menuplus() {
		int a = Integer.parseInt(data.getRequest().getParameter("cnt"));
		a += 1;
		System.out.println("\n\n\n\n\n\n\n a =" + a);
		System.out.println("menuplus에 들어옴!!!!!!!!!!!!!!!\n\n\n\n\n\n\n");
		data.setRedirect(true);
		data.setPath("redirect:menuinsertform?id=" + sovo.getRest_id() + "&cnt=" + a);
		System.out.println("menuplus에 들어옴!!!!!!!!!!!!!!!\n\n\n\n\n\n\n2222222");
		dao.detail(sovo);
		System.out.println("menuplus에 들어옴!!!!!!!!!!!!!!!\n\n\n\n\n\n\n3333333svo" + dao.detail(sovo));
	}

	@RequestMapping
	String mapping() {
		String res = "yeogiyo/template";
		if (data.isRedirect()) { //// redirect에 따른 redirect or forward 선택
			res = data.getPath();
		}
		return res;
	}
}