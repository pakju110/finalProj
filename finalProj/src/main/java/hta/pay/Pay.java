/*package hta.pay;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hta.controll.SubControll;
import hta.model.PathData;
import hta.pay.model.PayRepository;
import hta.pay.model.PayVo;


@Service
public class Pay implements SubControll {

	@Resource
	PathData data;
	
	@Resource
	PayRepository dao;
	
	PayVo novo;
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("pay 진입성공:"+data);
		novo = (PayVo)data.getDd();
	
		switch(data.getService())
		{
			case "list":
				list();
				break;
			case "view":
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
			case "reg":
				reg();
				break;
			case "payone":
				payone();
				break;
			
		}		
	}
	public String payone() {
	return "payone";
		
	}
	
	void delete() {
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
	void reg() {
	
		System.out.println("진입확인"+novo);
		
		//fileupload(vo, data.getRequest());
		//dao.insert(novo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?User_id="+novo.getUser_id());
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

	void  list() {

		data.setDd(dao.list());
	}		
	
	ModelAndView  modifySubmit(UserVo vo, HttpServletRequest request) {

		String url = "redirect:modifyForm";
		
		//vo.setUpfile(vo.getFf().getOriginalFilename());
		
		if(dao.modify(vo))
		{
			//fileupload(vo, request);
			url = "redirect:detail";
		}
		ModelAndView mav = new ModelAndView(url);
		
		
		mav.addObject("user_id", vo.getUser_id());
		return mav;
	}
	
	
	ModelAndView  deleteForm(@ModelAttribute("vo") UserVo vo) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("deleteForm:"+vo.getUser_id());
		return mav;
	}
	

	
}
*/