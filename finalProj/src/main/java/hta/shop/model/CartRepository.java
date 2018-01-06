package hta.shop.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class CartRepository {
	

	@Resource
	SqlSessionTemplate template;
	
	public List<CartVo> list(CartVo vo){
		
		return template.selectList("cartmapper.selectList",vo);
	}
	/*public List<ShopVo> typelist(String vo){
		
		return template.selectList("shopmapper.selectList2", vo);
	}*/
	public List<CartVo> list2(Integer vo){
		
		return template.selectList("cartmapper.selectList2",vo);
	}
	
	public CartVo detail(CartVo vo){
		
		return template.selectOne("cartmapper.selectDetail",vo);
	}
	
	public void insert(CartVo vo)
	{
		template.insert("cartmapper.insertOne", vo);
	} 
	
	public boolean modify(CartVo vo) {
		return template.update("cartmapper.modify", vo) > 0;
	}
	public boolean modify2(CartVo vo) {
		return template.update("cartmapper.modify2", vo) > 0;
	}

	public boolean delete(CartVo vo) {
		return template.delete("cartmapper.delete", vo) > 0;
	}

	public boolean delete2(CartVo vo) {
		return template.delete("cartmapper.delete2", vo) > 0;
	}
	public boolean delete3(CartVo vo) {
		return template.delete("cartmapper.delete3", vo) > 0;
	}
}
