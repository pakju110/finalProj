package hta.controll;
 
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hta.model.LoginData;
import hta.model.Menu;
import hta.user.model.UserVo;


 
@Controller
@RequestMapping("yeogiyo/login/{cate2}/{service}")
public class LoginController {
 
    @Resource
    MyProvider provider;
    
    @Resource
    LoginData data;
    

	@ModelAttribute("data")
    LoginData data(
            @PathVariable String cate2,
            @PathVariable String service,
           UserVo userVo,
           HttpServletRequest request,
           HttpSession session
            ) {
        
        data.setRedirect(false);
   
        data.setCate1("login");
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
        
        
        data.setSession(session);
        
  
        
        menu();
        
        data.setDd(null);
        data.setDd(userVo);
        System.out.println("빈 가져온거??"+data.getDd());
        ////mainData
        SubControll control = provider.getContext().getBean("login", SubControll.class);
        //// SubCotroll 을 getBean 으로 가져옴
        control.execute();
        ///실행시킴
       
        return data;
        
    }
    
    //hta.model에 Topmenu로 뺌
    void menu() {
       
    	
    }
    
    
    @RequestMapping
    String mapping() {
        String res = "yeogiyo/template";
        if(data.isRedirect()) {    ////redirect에 따른 redirect or forward 선택
            res = data.getPath();
        }   
        return res;
    } 
    
    
    
    
}