package hta.shop.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class ShopRepository {
	

	@Resource
	SqlSessionTemplate template;
	
	public List<ShopVo> list(){
		
		return template.selectList("shopmapper.selectList");
	}
	/*public List<ShopVo> typelist(String vo){
		
		return template.selectList("shopmapper.selectList2", vo);
	}*/
	
	public ShopVo detail(ShopVo vo){
		
		return template.selectOne("shopmapper.selectDetail",vo);
	}
	
	public void insert(ShopVo vo)
	{
		template.insert("shopmapper.insertOne", vo);
	} 
	
	public boolean modify(ShopVo vo) {
		return template.update("shopmapper.modify", vo) > 0;
	}

	public boolean delete(ShopVo vo) {
		return template.delete("shopmapper.delete", vo) > 0;
	}

	public ShopVo idPwChk(ShopVo vo) {
		return template.selectOne("shopmapper.idPwChk", vo);
	}
}
