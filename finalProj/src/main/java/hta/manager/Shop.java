package hta.manager;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import hta.controll.SubControll;
import hta.model.ShopData;
import hta.shop.model.MenuRepository;
import hta.shop.model.ShopRepository;
import hta.shop.model.ShopVo;

@Service
public class Shop implements SubControll {

	@Resource
	ShopData data;
	
	@Resource
	ShopRepository dao;
	
	@Resource
	MenuRepository menu;
	
	ShopVo sovo;
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("shop 진입성공:"+data);
		sovo = (ShopVo)data.getDd();
	
		switch(data.getService())
		{
			case "list":
				list();
				break;
			case "view":
				view();
				break;
			case "modify":
				modify();
				break;
			case "modifyForm":
				modifyForm();
				break;
			case "menumodifyForm":
				menumodifyForm();
				break;
			case "deleteReg":
				delete();
				break;
			case "reg":
				reg();
				break;
			case "wlist":
				wlist();
				break;
		}		
	}
	void delete() {
		data.setRedirect(true);
		
		if(dao.idPwChk(sovo)!=null)
		{
			//fileupload(vo, request);
			data.setDd(dao.delete(sovo));
		}
		data.setPath("redirect:list");
		data.setDd(dao.detail(sovo));	
	}	
	
	void deleteForm() {
		data.setDd(sovo.getRest_id());
	}	
	void reg() {
	
		System.out.println("진입확인"+sovo);
		
		fileupload(sovo, data.getRequest());
		dao.insert(sovo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?id="+sovo.getRest_id());
		
		
	}
		
	void view() {
		System.out.println(sovo);
		
		System.out.println(dao.detail(sovo));
		data.setDd(dao.detail(sovo));
		data.setDd2(menu.list(sovo.getRest_id()));
	}
	
	void modify() {
	
		data.setRedirect(true);
	/*	if(dao.idPwChk(sovo)!=null)
		{
			//fileupload(vo, request);
			data.setDd(dao.modify(sovo));
		}*/
		//data.setPath("redirect:view?id="+sovo.getRest_id());
		data.setDd(dao.modify(sovo));
		data.setPath("redirect:view?id="+sovo.getRest_id());
	data.setDd(dao.detail(sovo));
	}
	
	void modifyForm() {
		data.setDd(dao.detail(sovo));
	}
	
	void menumodifyForm() {
		data.setDd(dao.detail(sovo));
		data.setDd2(menu.list(sovo.getRest_id()));
	}

	
	void  list() {

		data.setTotal(dao.wTotal());
		data.setDd(dao.list(data));
	}		
	
	void wlist() {
		data.setTotal(dao.wTotal());
		data.setDd(dao.wList(data));
		
	}
	
	/*ModelAndView  modifySubmit(UserVo vo, HttpServletRequest request) {

		String url = "redirect:modifyForm";
		
		//vo.setUpfile(vo.getFf().getOriginalFilename());
		
		if(dao.modify(vo))
		{
			//fileupload(vo, request);
			url = "redirect:detail";
		}
		ModelAndView mav = new ModelAndView(url);
		
		
		mav.addObject("user_id", vo.getUser_id());
		return mav;
	}
	
	
	ModelAndView  deleteForm(@ModelAttribute("vo") UserVo vo) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("deleteForm:"+vo.getUser_id());
		return mav;
	}*/
	
	void fileupload(ShopVo vo, HttpServletRequest request)
	{
		
		try {
			vo.setOrifile(vo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/img");
			outPath = "C:\\projwork\\haeunju\\src\\main\\webapp\\resources\\img";
			outPath += "/"+vo.getOrifile();
			
			
			vo.setSysfile(vo.getOrifile());
			
			
			FileOutputStream fos = new FileOutputStream(outPath);
			
			fos.write(vo.getFf().getBytes());
			
			fos.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
}
