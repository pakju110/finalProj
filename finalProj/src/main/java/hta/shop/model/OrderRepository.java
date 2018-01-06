package hta.shop.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class OrderRepository {

	@Resource
	SqlSessionTemplate template;

	public List<OrderVo> list() {
		return template.selectList("paymapper.orderList");
	}

	public OrderVo detail(Integer vo) {
		return template.selectOne("paymapper.orderDetail", vo);
	}
	public ShopVo shopDetail(String vo) {
		return template.selectOne("shopmapper.shopDetail", vo);
	}

	public void insert(OrderVo vo) {
		template.insert("paymapper.orderinsert", vo);
	}
	
	public Integer maxno() {
		return template.selectOne("paymapper.maxno");
	}

	

}
