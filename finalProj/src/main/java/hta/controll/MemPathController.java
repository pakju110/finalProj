/*package hta.controll;
 
import java.util.ArrayList;
import java.util.HashMap;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hta.down.model.DownVo;
import hta.model.Menu;
import hta.model.ManagerData;
import hta.pay.model.PayVo;
import hta.user.model.UserVo;
 
@Controller
@RequestMapping("yeogiyo/{cate1}/{cate2}/{service}")
public class MemPathController {
 
    @Resource
    MyProvider  provider;
    
    @Resource
    ManagerData data;
    
    @Resource
    TopMenu topmenu;
    
    @ModelAttribute("data")
    ManagerData data(@PathVariable String cate1,
            @PathVariable String cate2,
            @PathVariable String service,
           UserVo userVo,///각 카테고리별  bean을 가져옴
           DownVo downVo,
           
            HttpServletRequest request
            ) {
        
        data.setRedirect(false);
        
        ArrayList vos = new ArrayList<>();    ///bean들을 받음
        vos.add(userVo);
        vos.add(downVo);
       
       
        data.setCate1(cate1);
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
       
        menu();
 
        String voName = "hta."+cate1+".model."+cate1.substring(0, 1).toUpperCase()+cate1.substring(1)+"Vo";
      System.out.println(voName);
        ////현재 페이지에 필요한 bean 클래스명을 만듬
        //String voName ="hta.user.model.UserVo";
        for (Object obj : vos) {
            if(obj.getClass().getName().equals(voName)) {
                ////bean의 클래스 이름과 현재 페이지에 필요한 bean 클래스이름과 비교
                
                data.setDd(obj);
                ///맞으면 data 에 넣음
            }System.out.println("너냐"+obj.getClass().getName());
        }
        System.out.println("빈 가져온거??"+data.getDd());
 
        ////mainData
        SubControll control = provider.getContext().getBean(cate1, SubControll.class);
        //// SubCotroll 을 getBean 으로 가져옴
        control.execute();
        ///실행시킴
       
        return data;
        
    }
    
    //hta.model에 Topmenu로 뺌
    void menu() {
      ArrayList<Menu>topMenu = new ArrayList<>();
        
        topMenu.add(new Menu("info", "회사소개", "hello"));
        topMenu.add(new Menu("pay", "제품","pay"));
        topMenu.add(new Menu("down", "갤러리", "apink"));
        topMenu.add(new Menu("user", "고객센터", "notice"));
  
    	
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
        
        subMenu.put("info", new ArrayList<>());
        subMenu.put("pay", new ArrayList<>());
        //subMenu.put("down", new ArrayList<>());
        subMenu.put("user", new ArrayList<>());
            
        
        subMenu.get("user").add(new Menu("notice", "공지사항", "list"));
        subMenu.get("user").add(new Menu("fnq", "자주하는질문", "list"));
        subMenu.get("user").add(new Menu("qna", "질문및 답변", "list"));
      
        
        subMenu.get("down").add(new Menu("tv", "tv", "list"));
        
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
}*/