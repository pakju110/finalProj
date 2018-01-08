package hta.manager;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hta.controll.SubControll;
import hta.down.model.DownVo;
import hta.model.ManagerData;
import hta.notice.model.NoticeVO;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;

@Service
public class User implements SubControll {

	@Resource
	ManagerData data;
	
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
			case "restreg":
				restreg();
				break;
			case "grademodify":
				grademodify();
				break;
			case "idReg":
				idReg();
				break;
			case "idReg2":
				idReg2();
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
	
		System.out.println("reg진입확인"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?user_id="+vo.getUser_id());
	}
	

	void restreg() {
	
		System.out.println("restreg진입확인"+vo);
		
		fileupload(vo, data.getRequest());
		dao.insert2(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?user_id="+vo.getUser_id());
	}
	void idReg() {
		if(dao.detail(vo) != null) {
			data.getSession().setAttribute("idchek", "fa");
		}else{
			data.getSession().setAttribute("idchek", "tr");
		}
		
		data.setRedirect(true);
		data.setPath("redirect:userjoin?user_id="+vo.getUser_id() );
	}
	void idReg2() { 
		if(dao.detail(vo) != null) {
			data.getSession().setAttribute("idchek", "fa");
		}else{
			data.getSession().setAttribute("idchek", "tr");
		}
		
		data.setRedirect(true);
		data.setPath("redirect:restjoin?user_id="+vo.getUser_id());
		
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
	
	
	void grademodify() {
		data.setRedirect(true);
		data.setPath("redirect:list");
		data.setDd(dao.grademodify(vo));
	}

	
	void  list() {

		data.setDd(dao.list());
	}
	
	void fileupload(UserVo vo, HttpServletRequest request)
	{
		
		try {
			vo.setOrifile(vo.getFf().getOriginalFilename());
			String outPath = request.getRealPath("/resources/img");
			outPath = "E:\\xp\\2017java\\spring\\joinSun\\src\\main\\webapp\\resources\\up";
			outPath += "/"+vo.getOrifile();
			
			
			vo.setOrifile(vo.getOrifile());
			vo.setSysfile(vo.getOrifile());
			
			FileOutputStream fos = new FileOutputStream(outPath);
			
			fos.write(vo.getFf().getBytes());
			
			fos.close();
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
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
