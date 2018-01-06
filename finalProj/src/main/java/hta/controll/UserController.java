package hta.controll;
 
import java.util.ArrayList;
import java.util.HashMap;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hta.model.Menu;
import hta.model.ManagerData;

import hta.user.model.UserVo;
 
@Controller
@RequestMapping("yeogiyo/user/{cate2}/{service}")
public class UserController {
 
    @Resource
    MyProvider  provider;
    
    @Resource
    ManagerData data;
    
   /* @Resource
    TopMenu topmenu;*/
    
    @ModelAttribute("data")
    ManagerData data(
            @PathVariable String cate2,
            @PathVariable String service,
           UserVo userVo,///각 카테고리별  bean을 가져옴
           
            HttpServletRequest request
            ) {
        
        data.setRedirect(false);
      
       
        data.setCate1("user");
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
        data.setDd(userVo);
        menu();
 
        
        SubControll control = provider.getContext().getBean("user", SubControll.class);
        //// SubCotroll 을 getBean 으로 가져옴
        control.execute();
        ///실행시킴
       
        return data;
        
    }
    
    //hta.model에 Topmenu로 뺌
    void menu() {
     /* ArrayList<Menu>topMenu = new ArrayList<>();
        
        topMenu.add(new Menu("info", "회사소개", "hello"));
        topMenu.add(new Menu("pay", "제품","pay"));
        topMenu.add(new Menu("down", "갤러리", "apink"));
        topMenu.add(new Menu("user", "고객센터", "notice"));
  */
    	
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
        
        //subMenu.put("info", new ArrayList<>());
       // subMenu.put("pay", new ArrayList<>());
        //subMenu.put("down", new ArrayList<>());
        //subMenu.put("user", new ArrayList<>());
            
     /*   subMenu.get("user").add(new Menu("notice", "공지사항", "list"));
        subMenu.get("user").add(new Menu("fnq", "자주하는질문", "list"));
        subMenu.get("user").add(new Menu("qna", "질문및 답변", "list"));*/
      
       
       // subMenu.get("down").add(new Menu("tv", "tv", "list"));
        
    // data.setTopMenu(topMenu);
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
}