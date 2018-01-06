package hta.shop.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class MenuRepository {
	

	@Resource
	SqlSessionTemplate template;
	
	public List<MenuVo> list(String vo){
		
		return template.selectList("menumapper.selectList",vo);
	}
	/*public List<ShopVo> typelist(String vo){
		
		return template.selectList("shopmapper.selectList2", vo);
	}*/
	
	public MenuVo detail(MenuVo vo){
		
		return template.selectOne("menumapper.selectDetail",vo);
	}
	public MenuVo detail2(MenuVo vo){
		
		return template.selectOne("menumapper.selectDetail2",vo);
	}
	
	public void insert(MenuVo vo)
	{
		template.insert("menumapper.insertOne", vo);
	} 
	
	public boolean modify(MenuVo vo) {
		return template.update("menumapper.modify", vo) > 0;
	}

	public boolean delete(MenuVo vo) {
		return template.delete("menumapper.delete", vo) > 0;
	}

	public ShopVo idPwChk(MenuVo vo) {
		return template.selectOne("menumapper.idPwChk", vo);
	}
}
