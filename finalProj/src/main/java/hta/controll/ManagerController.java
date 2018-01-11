
package hta.controll;
 
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hta.manager.CfVo;
import hta.manager.PayorderVo;
import hta.model.ManagerData;
import hta.model.Menu;
import hta.model.ShopData;
import hta.pay.model.PayVo;
import hta.shop.model.ShopVo;
import hta.user.model.UserVo;


@Controller
@RequestMapping("yeogiyo/manager/{cate2}/{service}")
public class ManagerController {
 
    @Resource
    MyProvider  provider;
    
    @Resource
	ShopData data;

    
    @ModelAttribute("data")
    ShopData data(
    		 @PathVariable String cate2,
            @PathVariable String service,
            @RequestParam(value="page", required=false, defaultValue="1")Integer page,
           PayVo payVO,
           UserVo userVO,
           ShopVo shopVo,
           CfVo cfVO,
           PayorderVo payorderVO,
            HttpServletRequest request
            ) {
        
    	
        data.setRedirect(false);
       data.setSubMenu(null);
       data.setNowPage(page);
        data.setCate1("manager");
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
       
 
        switch (data.getCate2()) {
        	case "user":
        		data.setDd(userVO); 		
        		System.out.println("uservo.dd입력");
        		break;
        	case "shop":
        		data.setDd(shopVo);	
        		  System.out.println(shopVo);
        		System.out.println("shopVo.dd입력");
        		break;
        	case "pay":
        		data.setDd(payVO);
        		break;	
        	case "cf":
        		data.setDd(cfVO);
        		break;
        	case "payorder":
        		data.setDd(payorderVO);
        		break;
        		
        
        }
        

        menu();
               
        System.out.println("매니저  진입성공:"+data);
      
 
    
    SubControll control = provider.getContext().getBean(cate2, SubControll.class);
    //// SubCotroll 을 getBean 으로 가져옴
    control.execute();
    ///실행시킴
   
    return data;
    
    }
    
 
    void menu() {
    	HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();

        subMenu.put("manager", new ArrayList<>());

        subMenu.get("manager").add(new Menu("user", "회원 관리", "list"));
        subMenu.get("manager").add(new Menu("shop", "가게 관리", "list"));
        subMenu.get("manager").add(new Menu("cf", "광고관리", "list"));
        subMenu.get("manager").add(new Menu("payorder", "정산관리", "list"));
        subMenu.get("manager").add(new Menu("cf", "광고비용관리", "inpay"));
        subMenu.get("manager").add(new Menu("notice", "고객센터관리", "../../../yeogiyo/notice/notice/list"));
        

       
        data.setSubMenu(subMenu.get(data.getCate1()));  
    }
    

    @RequestMapping
    String mapping() {
        String res = "yeogiyo/manager/template";
        if(data.isRedirect()) {   
            res = data.getPath();
        }   
        return res;
    } 
    
 
}
