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
import hta.shop.model.ShopRepository;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;


@Service
public class Login implements SubControll {

	@Resource
	LoginData data;
	
	@Resource
	UserRepository dao;
	
	@Resource
	ShopRepository shopdao;
	
	UserVo vo;
	
	
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("login 진입성공:"+data);
		vo = (UserVo)data.getDd();
		
		
		
		switch(data.getService())
		{
			case "loginres":
				loginres();
				break;
			case "logout":
				logout();
				break;		
		}
		
	}


	

	void logout() {
		//data.getRequest().removeAttribute("loginuser");

		data.getSession().invalidate();
		data.setRedirect(true);
		data.setPath("redirect:../../shop/all/list");
		
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
			if(vo1.getGrade().equals("w")) {
				if(shopdao.idPwChk2(vo.getUser_id()) !=null) {
					data.setPath("redirect:../../shop/all/view?rest_id="+vo1.getUser_id());
				}else {
					data.setPath("redirect:../../shop/all/registerForm?rest_id="+vo1.getUser_id());
				}
				
				
			}else {
				
				data.setPath("redirect:../../shop/all/list");
			}
			
		}else{
			data.setPath("redirect:list");
		}

	}
	

	


	
}
