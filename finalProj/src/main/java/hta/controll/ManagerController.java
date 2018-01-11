
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
        		System.out.println("uservo.dd�Է�");
        		break;
        	case "shop":
        		data.setDd(shopVo);	
        		  System.out.println(shopVo);
        		System.out.println("shopVo.dd�Է�");
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
               
        System.out.println("�Ŵ���  ���Լ���:"+data);
      
 
    
    SubControll control = provider.getContext().getBean(cate2, SubControll.class);
    //// SubCotroll �� getBean ���� ������
    control.execute();
    ///�����Ŵ
   
    return data;
    
    }
    
 
    void menu() {
    	HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();

        subMenu.put("manager", new ArrayList<>());

        subMenu.get("manager").add(new Menu("user", "ȸ�� ����", "list"));
        subMenu.get("manager").add(new Menu("shop", "���� ����", "list"));
        subMenu.get("manager").add(new Menu("cf", "�������", "list"));
        subMenu.get("manager").add(new Menu("payorder", "�������", "list"));
        subMenu.get("manager").add(new Menu("cf", "���������", "inpay"));
        subMenu.get("manager").add(new Menu("notice", "�����Ͱ���", "../../../yeogiyo/notice/notice/list"));
        

       
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
