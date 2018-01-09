package hta.manager;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import hta.shop.model.ShopVo;



@Service
public class PayorderRepository {

	@Resource
	SqlSessionTemplate template;

	//관리자 매출관리 총 리스트
	public List<PayorderVo> list() {
		return template.selectList("payordermapper.selectList");
	}
	
	
	
	public List<PayorderVo> schlist(PayorderVo vo) {
		System.out.println("co아이디"+ vo);
		return template.selectList("payordermapper.schList");
	}
	
	//마이페이지 매출관리 총리스트
	public List<PayorderVo>mypagepayorderlist(String vo) {
		System.out.println("co아이디"+ vo);
		return template.selectList("payordermapper.mypagepayorderlist",vo);
	}
	
	//관리자 매출관리 검색
	public List<PayorderVo>managerpayorderlistsch(PayorderVo vo) {
		System.out.println("co아이디"+ vo);
		return template.selectList("payordermapper.managerpayorderlistsch",vo);
	}
	
	//마이페이지 매출검색
	public List<PayorderVo>mypagemesangsch(PayorderVo vo) {
		System.out.println("co아이디"+ vo);
		return template.selectList("payordermapper.mypagemesangsch",vo);
	}
	
	

}
