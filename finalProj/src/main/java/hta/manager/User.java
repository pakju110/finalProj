package hta.manager;

import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import hta.controll.SubControll;
import hta.model.ShopData;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;

@Service
public class User implements SubControll {

	@Resource
	ShopData data;
	
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
			
		}
		
	}

	void delete() {
		data.setRedirect(true);
		
		if(dao.idPwChk(vo)!=null)
		{
			//fileupload(vo, request);
			data.setDd(dao.delete(vo));
			data.getSession().invalidate();
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
		data.setPath("redirect:../../shop/all/list");
	}
	

	void restreg() {
	
		System.out.println("restreg진입확인"+vo);
		
		fileupload(vo, data.getRequest());
		dao.insert2(vo);
		
		
		UserVo chek =dao.detail(vo);
		
		
		data.setRedirect(true);
		
		if(chek.getGrade().equals("w")) {
			data.setPath("redirect:../../shop/all/registerForm?rest_id="+chek.getUser_id());
		}else {data.setPath("redirect:../../shop/all/list");}
		//data.setPath("redirect:view?user_id="+vo.getUser_id());
	}
	
	void idReg() {
		if(dao.idPwChk(vo)!=null)
		{
			data.getRequest().setAttribute("idchek", "fl");
		}else {data.getRequest().setAttribute("idchek", "tr");}
		data.setRedirect(true);
		data.setPath("redirect:userjoin?user_id="+vo.getUser_id());

	}
	void idReg2() {
		if(dao.idPwChk(vo)!=null)
		{
			if(dao.idPwChk(vo)!=null)
			{
				data.getRequest().setAttribute("idchek", "fl");
			}else {data.getRequest().setAttribute("idchek", "tr");}
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
