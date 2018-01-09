package hta.manager;

import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hta.controll.SubControll;
import hta.down.model.DownVo;
import hta.model.ManagerData;
import hta.model.ShopData;
import hta.notice.model.NoticeVO;
import hta.user.model.UserRepository;
import hta.user.model.UserVo;

@Service
public class Payorder implements SubControll {

	@Resource
	ShopData data;
	
	@Resource
	PayorderRepository dao;
	
	PayorderVo vo;
	
	
	@Override
	public void execute() {
		
		// TODO Auto-generated method stub
		
		System.out.println("center 진입성공:"+data);
		vo = (PayorderVo)data.getDd();
		
		
		
		switch(data.getService())
		{
			case "list":
				list();
				break;
			case "mypagemesangsch":
				mypagemesangsch();
				break;
			case "schlist":
				schlist();
				break;
		
		}
		
	}
	
	void schlist() {
		String old = vo.getYear1()+"-"+vo.getMonth1()+"-01";
		String prn = vo.getYear2()+"-"+vo.getMonth2()+"-31";
		Date date1,date2;
		try {
			date1 = new SimpleDateFormat("yyyy-MM-dd").parse(old);
			date2 = new SimpleDateFormat("yyyy-MM-dd").parse(prn);
			vo.setTodate(date1);
			vo.setTodate2(date2);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		data.setDd(dao.managerpayorderlistsch(vo));
	}
	
	void  list() {

		data.setDd(dao.list());
	}
	
	void  mypagemesangsch() {

		data.setDd(dao.schlist(vo));
	}

}
