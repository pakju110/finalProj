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
           UserVo userVo,///�� ī�װ���  bean�� ������
           DownVo downVo,
           
            HttpServletRequest request
            ) {
        
        data.setRedirect(false);
        
        ArrayList vos = new ArrayList<>();    ///bean���� ����
        vos.add(userVo);
        vos.add(downVo);
       
       
        data.setCate1(cate1);
        data.setCate2(cate2);
        data.setService(service);
        data.setRequest(request);
       
        menu();
 
        String voName = "hta."+cate1+".model."+cate1.substring(0, 1).toUpperCase()+cate1.substring(1)+"Vo";
      System.out.println(voName);
        ////���� �������� �ʿ��� bean Ŭ�������� ����
        //String voName ="hta.user.model.UserVo";
        for (Object obj : vos) {
            if(obj.getClass().getName().equals(voName)) {
                ////bean�� Ŭ���� �̸��� ���� �������� �ʿ��� bean Ŭ�����̸��� ��
                
                data.setDd(obj);
                ///������ data �� ����
            }System.out.println("�ʳ�"+obj.getClass().getName());
        }
        System.out.println("�� �����°�??"+data.getDd());
 
        ////mainData
        SubControll control = provider.getContext().getBean(cate1, SubControll.class);
        //// SubCotroll �� getBean ���� ������
        control.execute();
        ///�����Ŵ
       
        return data;
        
    }
    
    //hta.model�� Topmenu�� ��
    void menu() {
      ArrayList<Menu>topMenu = new ArrayList<>();
        
        topMenu.add(new Menu("info", "ȸ��Ұ�", "hello"));
        topMenu.add(new Menu("pay", "��ǰ","pay"));
        topMenu.add(new Menu("down", "������", "apink"));
        topMenu.add(new Menu("user", "������", "notice"));
  
    	
		HashMap<String, ArrayList<Menu>>subMenu = new HashMap<>();
        
        subMenu.put("info", new ArrayList<>());
        subMenu.put("pay", new ArrayList<>());
        //subMenu.put("down", new ArrayList<>());
        subMenu.put("user", new ArrayList<>());
            
        
        subMenu.get("user").add(new Menu("notice", "��������", "list"));
        subMenu.get("user").add(new Menu("fnq", "�����ϴ�����", "list"));
        subMenu.get("user").add(new Menu("qna", "������ �亯", "list"));
      
        
        subMenu.get("down").add(new Menu("tv", "tv", "list"));
        
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
}*/