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

import hta.manager.CfRepository;
import hta.manager.CfVo;
import hta.model.ManagerData;
import hta.model.Menu;
import hta.pay.model.PayRepository;
import hta.pay.model.PayVo;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;
 
@Controller
@RequestMapping("yeogiyo/mypage/{cate2}/{service}")
public class MypageController {
 
    @Resource
    MyProvider  provider;
    
    @Resource
    ManagerData data;
    
	@Resource
	UserRepository dao;
	@Resource
	PayRepository paydao;
	
	@Resource
	CfRepository cfdao;
	
    UserVo vo;
    PayVo pvo;
    UserVo vv;
    
    CfVo cfvo;
   /* @Resource
    TopMenu topmenu;*/
    
    @ModelAttribute("data")
    ManagerData data(
            @PathVariable String cate2,
            @PathVariable String service,
        UserVo userVo,///각 카테고리별  bean을 가져옴
           PayVo payVo,
           CfVo cfVo,
            HttpServletRequest request,
            HttpSession session
            ) {
        
        data.setRedirect(false);
      
       
        data.setCate1("mypage");
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
        
        data.setSession(session);
        
        menu();
        
        vv = (UserVo)data.getSession().getAttribute("loginuser");
        vo = userVo;
        vo.setUser_id(vv.getUser_id());
        pvo = payVo;
        
        cfvo = cfVo;
 
        switch(data.getService())
		{
		case "list":
			list();
			break;
		
		case "modify":
			modify();
			break;
		case "modifyform":
			modifyform();
			break;
		case "deleteReg":
			delete();
			break;
		case "reg":
			reg();
			break;
			
		case "paylist":
		 paylist();
		break;
		case "cfreg":
		cfreg();
		break;
		
		}
        
        
        
        
        
        
        return data;
        
    }
    
    //hta.model에 Topmenu로 뺌
    void menu() {

		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
		 vv = (UserVo)data.getSession().getAttribute("loginuser");
       
		 
		 subMenu.put("mypage", new ArrayList<>());
        
        subMenu.get("mypage").add(new Menu("list", "내 정보", "list"));
        subMenu.get("mypage").add(new Menu("modify", "정보 수정", "modifyform"));
        subMenu.get("mypage").add(new Menu("pay", "주문 내역", "paylist"));
        System.out.println("\n\n\n\nMENU()\n\n\n"+vv.getGrade()+"\n\n\n\n");
        if(vv.getGrade().equals("r")) {
        	subMenu.get("mypage").add(new Menu("test", "매출정보", "TEST"));
        	subMenu.get("mypage").add(new Menu("cf", "광고신청", "cf"));
        }
        
        
        subMenu.get("mypage").add(new Menu("delete", "회원 탈퇴", "deleteForm"));
        
       
        
        /*
        subMenu.get("down").add(new Menu("tv", "tv", "list"));*/
        
       
        data.setSubMenu(subMenu.get(data.getCate1()));
    }
    @RequestMapping
    String mapping() {
        String res = "yeogiyo/template";
        if(data.isRedirect()) {    ////redirect에 따른 redirect or forward 선택
            res = data.getPath();
        }   
        return res;
    } 
    

	String list() {
		data.setDd(dao.detail(vo));
	return "list";
	}
	

	
	void  modify() {
		data.setRedirect(true);
		
		if(dao.idPwChk(vo)!=null)
		{
			//fileupload(vo, data.getRequest());
			dao.modify(vo);
			data.setDd(dao.detail(vo));
			//data.getSession().setAttribute("loginuser", vo);
			
		}
		data.setPath("redirect:list");
		
	}
	
	void modifyform() {
		//data.setDd(dao.detail(vo));
	}
	
	
	
	
	
	void delete() {
		data.setRedirect(true);
		
		if(dao.idPwChk(vo)!=null)
		{
			//fileupload(vo, request);
			dao.delete(vo);
		}
		data.setPath("redirect:list");
		data.setDd(dao.detail(vo));
		
	}
	
	
	void deleteForm() {
		data.setDd(vo.getUser_id());
	}
	
	void reg() {
	
		System.out.println("진입확인"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?user_id="+vo.getUser_id());
	}
	
	
	void paylist() {

		data.setDd2(paydao.list2(vo.getUser_id()));
		
	}
	
	void fileupload(UserVo vo, HttpServletRequest request)
	{
		
		try {
			vo.setOrifile(vo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/img");
			outPath = "E:\\xp\\2017java\\spring\\joinSun\\src\\main\\webapp\\resources\\up";
			outPath += "/"+vo.getOrifile();
			
			
			vo.setOrifile(vo.getOrifile());
			vo.setSysfile(vo.getOrifile());
			
			FileOutputStream fos = new FileOutputStream(outPath);
			
			fos.write(vo.getFf().getBytes());
			
			fos.close();
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
	}
	
	
	void cfreg() {
		System.out.println("cfvo = "+cfvo);
		//System.out.println(cfvo.getFf());
		fileupload2(cfvo, data.getRequest());
		cfdao.insert(cfvo);
		data.setRedirect(true);
		data.setPath("redirect:list");
		
	}
	
	void fileupload2(CfVo cfvo, HttpServletRequest request)
	{
		FileOutputStream fos;
		cfvo.setCf_oriimg(cfvo.getFf().getOriginalFilename());
		try {
			//cfvo.setCf_oriimg(cfvo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/cf");
			outPath = "E:\\xp\\2017java\\spring\\joinSun\\src\\main\\webapp\\resources\\cf";
			String realPath = outPath+ "\\"+cfvo.getCf_oriimg();
			File file = new File(realPath);
			 if (file.exists()) {
	               int count = 0;
	               int dot = cfvo.getCf_oriimg().lastIndexOf(".");
	               String nameonly = cfvo.getCf_oriimg().substring(0, dot);
	               String hwak = cfvo.getCf_oriimg().substring(dot);

	               while (file.exists()) {
	                  count++;
	                  cfvo.setCf_sysimg(nameonly + "_" + count + hwak);
	                  realPath = outPath + "\\" + cfvo.getCf_sysimg();

	                  file = new File(realPath);
	               }
	            }

	            fos = new FileOutputStream(realPath);
	            cfvo.setCf_oriimg(cfvo.getFf().getOriginalFilename());
	            cfvo.setCf_sysimg(cfvo.getCf_oriimg());
	            fos.write(cfvo.getFf().getBytes());
	            
	            fos.close();


			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
	}

    
}