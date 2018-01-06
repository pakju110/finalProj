package hta.controll;
 
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hta.model.ShopData;
import hta.shop.model.CartRepository;
import hta.shop.model.CartVo;
import hta.shop.model.MenuVo;
import hta.shop.model.OrderRepository;
import hta.shop.model.OrderVo;
import hta.shop.model.ShopVo;
import hta.user.model.UserVo;
 
@Controller
@RequestMapping("yeogiyo/pay/{service}")
public class PayController {
 
    @Resource
    MyProvider  provider;
    
    @Resource
    ShopData data;
    
    @Resource
	OrderRepository dao;
	
    @Resource
    CartRepository cart;
    OrderVo orvo;
	UserVo uservo;
    
   /* @Resource
    Topmenu topmenu;*/
    
    @ModelAttribute("data")
    ShopData data(@PathVariable String service,
			ShopVo shopVo,
			CartVo cartVo,
			OrderVo orderVo,
			HttpServletRequest request,
			HttpSession session
            ) {
        
    	
        data.setRedirect(false);
       
        data.setService(service);
        data.setRequest(request);

        
		
		orvo = orderVo;
       
        System.out.println("pay 진입성공:"+data);
        if(data.getSession().getAttribute("loginuser") != null) {
        	uservo = (UserVo)data.getSession().getAttribute("loginuser");
        }
	
		switch(data.getService())
		{
			case "list":
				list();
				break;
			case "reg":
				reg();
				break;
			/*case "view":
				view();
				break;
			case "modify":
				modify();
				break;
			case "modifyForm":
				modifyForm();
				break;
			case "deleteReg":
				delete();
				break;
			*/
			
			
		}	
       
        return data;
        
    }
    
   
    @RequestMapping
    String mapping() {
        String res = "yeogiyo/paytemplate";
        if(data.isRedirect()) {    ////redirect에 따른 redirect or forward 선택
            res = data.getPath();
        }   
        return res;
    } 
    
    
    
    
    
    	void list() {
    		SimpleDateFormat st = new SimpleDateFormat("HH");
    		Date currentTime = new Date ( ); 
    		int nowTime = Integer.parseInt(st.format ( currentTime ));
    		ShopVo sovo = dao.shopDetail(orvo.getRest_id());
    		int opentime = sovo.getOpentime(),closetime = sovo.getClosetime();
    		if(opentime > closetime) {
    			if(opentime > nowTime) {
    				if(opentime <= nowTime+24 && nowTime+24 <= closetime+24) {
    					timepay();
    				}else {notpay();}
    			}else {
    				if(opentime <= nowTime && nowTime <= closetime+24) {
    					timepay();
    				}else {notpay();}
    			}	
    		}else if(opentime <= nowTime && nowTime <= closetime) {
    			timepay();
    		}else {
    			notpay();
    		}
    		
    		
    		
    	}
    	public String timepay() {
			CartVo cavo = new CartVo();
    		cavo.setId(uservo.getUser_id());
    		cavo.setRest_id(orvo.getRest_id());
    		data.setCart(cart.list(cavo));
    			return "list";
		}
    	void notpay() {
    		data.setRedirect(true);
    		data.setPath("redirect:notpay");	
    	}	
    	void reg() {
        	
    		System.out.println("진입확인"+orvo);
    		
    		//fileupload(vo, data.getRequest());
    		dao.insert(orvo);
    		

    		CartVo cavo = new CartVo();
    		cavo.setRest_id(orvo.getRest_id());
    		cavo.setId(uservo.getUser_id());
    		cavo.setOrderno(dao.maxno());
    		System.out.println("\n\n\n\n\n\n\n\n\n\n"+dao.maxno()+"\n\n\n\n\n");
    		System.out.println("+++++++------\n\n\n\n++++++=="+dao.detail(dao.maxno())+"\n\n\n\n\n+++++++\n\n\n");
    		
    		
    		cart.modify2(cavo);
    		
    		data.setDd((OrderVo)dao.detail(dao.maxno()));
    		data.setCart(cart.list2(dao.maxno()));
    		System.out.println("GETDD----------\n\n"+data.getDd()+"\n\n\n\n");
    		data.setRedirect(true);
    		data.setPath("redirect:view?User_id="+uservo.getUser_id());
    	}
    	/*void delete() {
    		data.setRedirect(true);
    		
    		if(dao.idPwChk(novo)!=null)
    		{
    			//fileupload(vo, request);
    			data.setDd(dao.delete(novo));
    		}
    		data.setPath("redirect:list");
    		data.setDd(dao.detail(novo));	
    	}	
    	
    	void deleteForm() {
    		data.setDd(novo.getRest_id());
    	}	
    	
    		
    	void view() {
    		
    		data.setDd(dao.detail(novo));
    	}
    	
    	void  modify() {
    		data.setRedirect(true);
    		
    		if(dao.idPwChk(novo)!=null)
    		{
    			//fileupload(vo, request);
    			data.setDd(dao.modify(novo));
    		}
    		data.setPath("redirect:view?User_id="+novo.getUser_id());
    		data.setDd(dao.detail(novo));
    	}
    	
    	void modifyForm() {
    		data.setDd(dao.detail(novo));
    	}
*/
    		
}