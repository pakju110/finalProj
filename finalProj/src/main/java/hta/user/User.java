package hta.user;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hta.controll.SubControll;
import hta.down.model.DownVo;
import hta.model.PathData;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;

@Service
public class User implements SubControll {

	@Resource
	PathData data;
	
	@Resource
	UserRepository dao;
	
	UserVo vo;
	
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("center 진입성공:"+data);
		vo = (UserVo)data.getDd();
		
		
		
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
			
		}
		
	}

	void delete() {
		data.setRedirect(true);
		
		if(dao.idPwChk(vo)!=null)
		{
			//fileupload(vo, request);
			data.setDd(dao.delete(vo));
		}
		data.setPath("redirect:list");
		data.setDd(dao.detail(vo));
		
	}
	
	
	void deleteForm() {
		data.setDd(vo.getUser_id());
	}
	
	void reg() {
	
		System.out.println("진입확인"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?user_id="+vo.getUser_id());
	}
	
	
	void view() {
		
		data.setDd(dao.detail(vo));

	}
	
	
	void  modify() {
		data.setRedirect(true);
		
		if(dao.idPwChk(vo)!=null)
		{
			//fileupload(vo, request);
			data.setDd(dao.modify(vo));
		}
		data.setPath("redirect:view?user_id="+vo.getUser_id());
		data.setDd(dao.detail(vo));
	}
	
	void modifyForm() {
		data.setDd(dao.detail(vo));
	}

	
	void  list() {

		data.setDd(dao.list());
	}
	
	

	
	/*ModelAndView  modifySubmit(UserVo vo, HttpServletRequest request) {

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
	}*/
	

	
}
