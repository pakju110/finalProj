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

	//������ ������� �� ����Ʈ
	public List<PayorderVo> list() {
		return template.selectList("payordermapper.selectList");
	}
	
	
	
	public List<PayorderVo> schlist(PayorderVo vo) {
		System.out.println("co���̵�"+ vo);
		return template.selectList("payordermapper.schList");
	}
	
	//���������� ������� �Ѹ���Ʈ
	public List<PayorderVo>mypagepayorderlist(String vo) {
		System.out.println("co���̵�"+ vo);
		return template.selectList("payordermapper.mypagepayorderlist",vo);
	}
	
	//������ ������� �˻�
	public List<PayorderVo>managerpayorderlistsch(PayorderVo vo) {
		System.out.println("co���̵�"+ vo);
		return template.selectList("payordermapper.managerpayorderlistsch",vo);
	}
	
	//���������� ����˻�
	public List<PayorderVo>mypagemesangsch(PayorderVo vo) {
		System.out.println("co���̵�"+ vo);
		return template.selectList("payordermapper.mypagemesangsch",vo);
	}
	
	

}
