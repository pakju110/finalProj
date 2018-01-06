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
           UserVo userVo,///�� ī�װ���  bean�� ������
           
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
        //// SubCotroll �� getBean ���� ������
        control.execute();
        ///�����Ŵ
       
        return data;
        
    }
    
    //hta.model�� Topmenu�� ��
    void menu() {
     /* ArrayList<Menu>topMenu = new ArrayList<>();
        
        topMenu.add(new Menu("info", "ȸ��Ұ�", "hello"));
        topMenu.add(new Menu("pay", "��ǰ","pay"));
        topMenu.add(new Menu("down", "������", "apink"));
        topMenu.add(new Menu("user", "������", "notice"));
  */
    	
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
        
        //subMenu.put("info", new ArrayList<>());
       // subMenu.put("pay", new ArrayList<>());
        //subMenu.put("down", new ArrayList<>());
        //subMenu.put("user", new ArrayList<>());
            
     /*   subMenu.get("user").add(new Menu("notice", "��������", "list"));
        subMenu.get("user").add(new Menu("fnq", "�����ϴ�����", "list"));
        subMenu.get("user").add(new Menu("qna", "������ �亯", "list"));*/
      
       
       // subMenu.get("down").add(new Menu("tv", "tv", "list"));
        
    // data.setTopMenu(topMenu);
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