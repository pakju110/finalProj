/*package hta.shop.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class OptionRepository {
	

	@Resource
	SqlSessionTemplate template;
	
	public List<OptionVo> list(Integer vo){
		
		return template.selectList("optionmapper.selectList",vo);
	}
	public List<ShopVo> typelist(String vo){
		
		return template.selectList("shopmapper.selectList2", vo);
	}
	
	public OptionVo detail(OptionVo vo){
		
		return template.selectOne("optionmapper.selectDetail",vo);
	}
	public OptionVo detail2(OptionVo vo){
		
		return template.selectOne("optionmapper.selectDetail2",vo);
	}
	
	public void insert(OptionVo vo)
	{
		template.insert("optionmapper.insertOne", vo);
	} 
	
	public boolean modify(OptionVo vo) {
		return template.update("optionmapper.modify", vo) > 0;
	}

	public boolean delete(OptionVo vo) {
		return template.delete("optionmapper.delete", vo) > 0;
	}

	public ShopVo idPwChk(OptionVo vo) {
		return template.selectOne("optionmapper.idPwChk", vo);
	}
}
*/