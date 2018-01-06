package hta.login;

import java.io.FileOutputStream;
import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;

import hta.controll.SubControll;


import hta.model.LoginData;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;


@Service
public class Login implements SubControll {

	@Resource
	LoginData data;
	
	@Resource
	UserRepository dao;
	
	UserVo vo;
	
	
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("login 진입성공:"+data);
		vo = (UserVo)data.getDd();
		
		
		
		switch(data.getService())
		{
			case "loginform":
				loginform();
				break;
			case "loginres":
				loginres();
				break;
			case "logout":
				logout();
				break;
			case "view":
				view();
				break;
			case "reg":
				reg();
				
				
		}
		
	}

	public String loginform() {
		return "loginform";
		
	}
	
	String view() {
		return "view";
	}
	void logout() {
		//data.getRequest().removeAttribute("loginuser");

		data.getSession().invalidate();
		data.setRedirect(true);
		data.setPath("redirect:loginform");
		
	}
	

	
	
	
	void  loginres() {
		//data.setRedirect(true);
		data.setDd(vo);
		System.out.println(vo.getUser_id());
		data.setRedirect(true);
		if(dao.idPwChk(vo)!=null)
		{
			UserVo vo1 = dao.detail(vo);
			System.out.println(vo1);
			data.getSession().setAttribute("loginuser", vo1);
			data.setPath("redirect:view?user_id="+vo.getUser_id());
		}else{
			data.setPath("redirect:loginform");
		}
		
		//data.setDd(dao.detail(vo));
	}
	
	
	
	
	void reg() {
		
		System.out.println("진입확인"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:login");
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
	

	
}
