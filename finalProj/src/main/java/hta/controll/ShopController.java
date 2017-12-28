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
        System.out.println("�� �����°�??"+data.getDd());
        System.out.println("�� �����°�222222222??"+data.getDd2());
        ////mainData
        SubControll control = provider.getContext().getBean("shop", SubControll.class);
        //// SubCotroll �� getBean ���� ������
        control.execute();
        ///�����Ŵ
       
        return data;
        
    }
    
    //hta.model�� Topmenu�� ��
    void menu() {
        
  
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();

        subMenu.put("shop", new ArrayList<>());

        subMenu.get("shop").add(new Menu("all", "��ü", "list"));
        subMenu.get("shop").add(new Menu("chicken", "ġŲ", "list"));
        subMenu.get("shop").add(new Menu("pizza", "����", "list"));
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
}