package hta.controll;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hta.model.Menu;


import hta.model.PathData;
import hta.notice.model.NoticeRepository;
import hta.notice.model.NoticeVO;
import hta.user.model.UserVo;




@Controller
@RequestMapping("yeogiyo/notice/{cate2}/{service}")
public class NoticeController {

	@Resource
	MyProvider provider;
	
	@Resource
	PathData data;
	
	
	
	@Resource
	NoticeRepository dao;
	
	NoticeVO vo;
	UserVo userVo;
	
	@ModelAttribute("data")
	PathData data(/*@PathVariable String cate1,*/
			@PathVariable String cate2,
			@PathVariable String service,
			NoticeVO noticeVo,		///각 카테고리별  bean을 가져옴
			@RequestParam(value="page", required=false, defaultValue="1")Integer page,
			HttpServletRequest request,
			HttpSession session
			) {
		
		
		data.setRedirect(false);
		data.setBtnGo(false);
		data.setSession(session);
		
		data.setCate1("notice");
		data.setCate2(cate2);
		
		data.setNowPage(page);
		
		data.setService(service);
		data.setRequest(request);
		userVo = (UserVo)data.getSession().getAttribute("loginuser");
		
		menu();
		
		vo=noticeVo;
		data.setDd(noticeVo);
		
		
		System.out.println("\n\n\n\n"+vo+"\n\n\n\n");
		switch(data.getService())
		{
		
			case "list":
				typelist(data);
				break;
				
			case "detail":	
				view();
				break;	
				
			case "insert":
				insert();
				break;
			
			case "replyForm":
				reply();
				break;
				
			case "replyReg":
				replyReg();
				break;
			
			case "modify":
				modify();
				break;
				
			case "modifyForm":
				modifyForm();
				break;
				
			case "deleteReg":		
				delete();
				break;
				
			case "fileDelete":
				fileDelete(vo);
				break;
				
			case "deleteForm":
				deleteForm();
				break;
			
		}	
		return data;	
	}
	
	
	void fileDelete(NoticeVO vo) 
	{ 
		if(vo.getSysfile()!=null && ! vo.getSysfile().equals("")&& ! vo.getSysfile().equals("null")) 
 		{ 
			
			String path = "C:\\eclWork\\joinSun\\src\\main\\webapp\\resources\\up";
			path += "\\"+vo.getSysfile();
	
			File ff = new File(path); 
 			ff.delete(); 
 			dao.fileDelete(vo);
 		} 
		data.setRedirect(true);
		data.setPath("redirect:modifyForm?no="+vo.getNo());
		
 	}
	
	
	void delete() {
		data.setRedirect(true);		
	
		if(dao.noPwChk(vo)!=null)
		{
			fileDelete(vo);
			data.setDd(dao.delete(vo));
			
		}	
		data.setPath("redirect:list");
		data.setDd(dao.detail(vo));	
	}		
	
	void deleteForm() {
		data.setDd(dao.detail(vo));
	}	
	
	
	
	void modify() {
		data.setRedirect(true);	
		if(dao.noPwChk(vo)!=null)
		{
			fileDelete(vo);
			fileupload(vo, data.getRequest());
			data.setDd(dao.modify(vo));
		}
		data.setPath("redirect:detail?no="+vo.getNo());
		data.setDd(dao.detail(vo));
	}
	
	
	void modifyForm() {
		System.out.println(dao.detail(vo));
		data.setDd(dao.detail(vo));
	}

	
	void insert() {
	
		System.out.println("insert 진입확인"+vo.getPname());
		fileupload(vo, data.getRequest());
			
		vo.setId(userVo.getUser_id());
		vo.setPname(userVo.getUser_name());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:detail?no="+vo.getNo());
		System.out.println(vo.getNo());
	}
	
	void reply() {	
		
		data.setDd(dao.detail(vo));
		vo.setId(userVo.getUser_id());
		
		System.out.println("reply 진입확인 / " + vo.getPname());
	
	}
	
	void replyReg() {
		
		System.out.println("reply reg 확인 ");
		
		fileupload(vo, data.getRequest());
		vo.setId(userVo.getUser_id());
		vo.setPname(userVo.getUser_name());
		dao.reply(vo);
		dao.replyCheck(vo);
		data.setRedirect(true);
		data.setPath("redirect:detail?no="+vo.getNo());
	}
	
	
	void view() {
		
		dao.addCount(vo);
		data.setDd(dao.detail(vo));
	}

	
	void typelist(PathData pathData) {
		
		//System.out.println(pathData);
		System.out.println(dao.selectTotal(data.getCate1())+"\n\n\n\n\n\n\n\n\n");
		data.setTotal(dao.selectTotal(data.getCate1()));
		data.setDd(dao.list(pathData));
		


		
		
		switch(data.getCate1()) {
			case "fnq":
			case "notice":
				if(userVo!=null && userVo.getUser_id().equals("admin"))
					data.setBtnGo(true);
				break;
				
			case "qna":
				if(userVo!=null)
					data.setBtnGo(true);
				break;
		}

	}
	


	void fileupload(NoticeVO vo, HttpServletRequest request) { // 파일 업로드 메소드 !!!!!!!!!!!!!! upfile = 파일정보,
        // request = 업로드할 폴더정보
        FileOutputStream fos;
        vo.setOrifile(vo.getFf().getOriginalFilename());
        vo.setSysfile(vo.getOrifile());
        try {
           String outPath = request.getRealPath("/resources/up");
           outPath = "C:\\eclWork\\joinSun\\src\\main\\webapp\\resources\\up";
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
           fos.write(vo.getFf().getBytes());
           
           fos.close();
        } catch (Exception e) {
           // TODO Auto-generated catch block
           e.printStackTrace();
        }
     }




	void menu() {
		/*ArrayList<Menu>topMenu = new ArrayList<>();
		
		topMenu.add(new Menu("info", "회사소개", "hello"));
		topMenu.add(new Menu("food", "메뉴", "tv"));
		topMenu.add(new Menu("board", "게시판", "apink"));
		topMenu.add(new Menu("notice", "고객센터", "notice"));
		*/
		
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
		
		subMenu.put("info", new ArrayList<>());
		subMenu.put("food", new ArrayList<>());
		subMenu.put("board", new ArrayList<>());
		subMenu.put("notice", new ArrayList<>());
		
		
		/*subMenu.get("food").add(new Menu("notice", "공지사항", "list"));
		subMenu.get("food").add(new Menu("fnq", "자주하는질문", "list"));
		subMenu.get("food").add(new Menu("qna", "질문및 답변", "list"));
		*/
		/*subMenu.get("board").add(new Menu("a", "b", "list"));*/
		
		subMenu.get("notice").add(new Menu("notice", "공지사항", "list"));
		subMenu.get("notice").add(new Menu("fnq", "자주하는질문", "list"));
		subMenu.get("notice").add(new Menu("qna", "질문및 답변", "list"));
		
		
		//data.setTopMenu(topMenu);
		data.setSubMenu(subMenu.get(data.getCate1()));
	}
	
	
	@RequestMapping
	String mapping() {
		
		System.out.println("mapping");
		String res = "yeogiyo/template";
		if(data.isRedirect()) {	////redirect에 따른 redirect or forward 선택
			res = data.getPath();
		}
					
		return res;
	}
	
}
