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
import hta.shop.model.ShopRepository;
import hta.shop.model.ShopVo;
import hta.user.model.UserRepository;


@Service
public class Cf implements SubControll {

	@Resource
	ManagerData data;
	
	@Resource
	CfRepository dao;
	@Resource
	ShopRepository sdao;
	
	
	CfVo vo;
	
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("center 진입성공:"+data);
		vo = (CfVo)data.getDd();
		
		
		
		switch(data.getService())
		{
		case "list":
			list();
			break;
		case "wlist":
			wlist();
			break;
		case "nowcflist":
			nowcflist();
			break;
		case "endcflist":
			endcflist();
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
			case "cfapproval":
				cfapproval();
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
		data.setDd(vo.getRest_id());
	}
	
	void reg() {
	
		System.out.println("reg진입확인"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?Rest_id="+vo.getRest_id());
	}
	

	void restreg() {
	
		System.out.println("restreg진입확인"+vo);
		
		//fileupload(vo, data.getRequest());
		dao.insert2(vo);
		
		data.setRedirect(true);
		data.setPath("redirect:view?Rest_id="+vo.getRest_id());
	}
	
	
	
	void view() {
		
		
		ShopVo svo= new ShopVo();
		svo.setRest_id(data.getRequest().getParameter("Rest_id"));
	
		
		//data.setCfdetailimg(data.getRequest().getParameter("cf_sysimg"));
		//System.out.println("cf이미지!!!"+data.getRequest().getParameter("cf_sysimg"));
		data.setCfdetailimg(dao.detail(vo));
		data.setDd(sdao.detail(svo));
		
	}
	
	
	void  modify() {
		data.setRedirect(true);
		
		if(dao.idPwChk(vo)!=null)
		{
			//fileupload(vo, request);
			data.setDd(dao.modify(vo));
		}
		data.setPath("redirect:view?Rest_id="+vo.getRest_id());
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
	void  wlist() {

		data.setDd(dao.wlist());
	}
	
	void  nowcflist() {

		data.setDd(dao.nowcflist());
	}
	
	
	void  endcflist() {

		data.setDd(dao.endcflist());
	}
	
	
	void cfapproval() {
		data.setDd(dao.cfapproval(vo));
		
		data.setRedirect(true);
		data.setPath("redirect:list");
		
		data.setDd(dao.list());
		
	}
	/*void fileupload(CfVo vo, HttpServletRequest request)
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
		
		
	}*/
	

	
	ModelAndView  modifySubmit(CfVo vo, HttpServletRequest request) {

		String url = "redirect:modifyForm";
		
		//vo.setUpfile(vo.getFf().getOriginalFilename());
		
		if(dao.modify(vo))
		{
			//fileupload(vo, request);
			url = "redirect:detail";
		}
		ModelAndView mav = new ModelAndView(url);
		
		
		mav.addObject("Rest_id", vo.getRest_id());
		return mav;
	}
	
	
	ModelAndView  deleteForm(@ModelAttribute("vo") CfVo vo) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("deleteForm:"+vo.getRest_id());
		return mav;
	}
	

	
}
