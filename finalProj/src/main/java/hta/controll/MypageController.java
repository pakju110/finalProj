package hta.controll;
 
import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
import hta.manager.PayorderRepository;
import hta.manager.PayorderVo;
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
	PayorderRepository payorderdao;
	
	
	
	@Resource
	CfRepository cfdao;
	
    UserVo vo;
    PayVo pvo;
    UserVo vv;
    PayorderVo povo;
    
    CfVo cfvo;
   /* @Resource
    TopMenu topmenu;*/
    
    @ModelAttribute("data")
    ManagerData data(
            @PathVariable String cate2,
            @PathVariable String service,
        UserVo userVo,///�� ī�װ�����  bean�� ������
           PayVo payVo,
           CfVo cfVo,
           PayorderVo poVo,
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
        povo =poVo;
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
		
		case "mypagemesang":
			mypagemesang();
			break;
			
		case "mypagemesangsch":
			mypagemesangsch();
			break;
		case "cf":
			cf();
			break;
		case "cf2":
			cf2();
			break;
		}
        
        
        
        
        
        
        return data;
        
    }
    
    //hta.model�� Topmenu�� ��
    void menu() {

		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
		 vv = (UserVo)data.getSession().getAttribute("loginuser");
       
		 
		 subMenu.put("mypage", new ArrayList<>());
        
        subMenu.get("mypage").add(new Menu("mypage", "�� ����", "list"));
        subMenu.get("mypage").add(new Menu("modify", "���� ����", "modifyform"));
        subMenu.get("mypage").add(new Menu("pay", "�ֹ� ����", "paylist"));
        
        if(vv.getGrade().equals("r")) {
        	subMenu.get("mypage").add(new Menu("mypagemesang", "��������", "mypagemesang"));
        	subMenu.get("mypage").add(new Menu("cf", "������û", "cf"));
        }
        
        
        subMenu.get("mypage").add(new Menu("delete", "ȸ�� Ż��", "deleteForm"));
        
       
        
        /*
        subMenu.get("down").add(new Menu("tv", "tv", "list"));*/
        
       
        data.setSubMenu(subMenu.get(data.getCate1()));
    }
    @RequestMapping
    String mapping() {
        String res = "yeogiyo/template";
        if(data.isRedirect()) {    ////redirect�� ���� redirect or forward ����
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
			fileupload(vo, data.getRequest());
			dao.modify(vo);
			data.setDd(dao.detail(vo));
			data.getSession().setAttribute("loginuser", vo);
			
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
	
	void cf() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		
		Calendar today = Calendar.getInstance();
		today.add(Calendar.MONTH, 1);
		if(cfvo.getNowMM()==null) {
			cfvo.setNowMM(sdf.format(today.getTime()));
		}
		
		cfvo.setIsNums(cfdao.nonList(cfvo));
		
		
			
		ArrayList<String> dds = new ArrayList<>();
		
		for (int i = 0; i <3; i++) {
			
			dds.add(sdf.format(today.getTime()));
			today.add(Calendar.MONTH, 1);
		}
		cfvo.setDds(dds);
		data.setDd(cfvo);
		
		data.setDd2(cfdao.list());
		
	}
	
	
	void cf2() {
		data.setDd(cfvo);

	}
	
	void reg() {
	
		System.out.println("����Ȯ��"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:cf2?user_id="+vo.getUser_id());
	}
	
	void paylist() {

		data.setDd2(paydao.list2(vo.getUser_id()));
		
	}
	
	void fileupload(UserVo vo, HttpServletRequest request)
	{
		
		try {
			vo.setOrifile(vo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/img");
			outPath = "C:\\Users\\pakju\\git\\finalProj\\finalProj\\src\\main\\webapp\\resources\\img";
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
		cfdao.insert2(cfvo);
		data.setRedirect(true);
		data.setPath("redirect:cf");
		
	}
	
	void fileupload2(CfVo cfvo, HttpServletRequest request)
	{
		FileOutputStream fos;
		cfvo.setCf_oriimg(cfvo.getFf().getOriginalFilename());
		try {
			//cfvo.setCf_oriimg(cfvo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/cf");
			outPath = "C:\\Users\\pakju\\git\\finalProj\\finalProj\\src\\main\\webapp\\resources\\cf";
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
	
	void 	mypagemesang() {
		
		data.setDd(payorderdao.mypagepayorderlist(vv.getUser_id()));
		
	}
	
	

	void mypagemesangsch() {
		String old = povo.getYear1()+"-"+povo.getMonth1()+"-01";
		String prn = povo.getYear2()+"-"+povo.getMonth2()+"-31";
		Date date1,date2;
		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(old);
			date2 = new SimpleDateFormat("yyyy-MM-dd").parse(prn);
			povo.setTodate(date1);
			povo.setTodate2(date2);
			System.out.println("\n\n\n\n"+povo+"\n\n\n");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		data.setDd(payorderdao.mypagemesangsch(povo));
	}
    
}