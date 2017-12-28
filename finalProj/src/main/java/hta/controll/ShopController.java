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
import hta.model.ShopData;
import hta.shop.model.MenuVo;
import hta.shop.model.ShopVo;
 
@Controller
@RequestMapping("yeogiyo/shop/{cate2}/{service}")
public class ShopController {
 
    @Resource
    MyProvider provider;
    
    @Resource
    ShopData data;
    
    @ModelAttribute("data")
    ShopData data(
            @PathVariable String cate2,
            @PathVariable String service,
           ShopVo shopVo,
           MenuVo menuVo,
           HttpServletRequest request
            ) {
        
        data.setRedirect(false);
        

        data.setCate1("shop");
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
       
        menu();
 
        data.setDd(shopVo);
        data.setDd2(menuVo); 
        System.out.println("빈 가져온거??"+data.getDd());
        System.out.println("빈 가져온거222222222??"+data.getDd2());
        ////mainData
        SubControll control = provider.getContext().getBean("shop", SubControll.class);
        //// SubCotroll 을 getBean 으로 가져옴
        control.execute();
        ///실행시킴
       
        return data;
        
    }
    
    //hta.model에 Topmenu로 뺌
    void menu() {
        
  
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();

        subMenu.put("shop", new ArrayList<>());

        subMenu.get("shop").add(new Menu("all", "전체", "list"));
        subMenu.get("shop").add(new Menu("chicken", "치킨", "list"));
        subMenu.get("shop").add(new Menu("pizza", "피자", "list"));
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
}