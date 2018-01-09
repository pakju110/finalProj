package hta.shop.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import hta.model.PathData;
import hta.model.ShopData;



@Service
public class ShopRepository {
	

	@Resource
	SqlSessionTemplate template;

	public Integer selectTotal(String vo)
	{
		return template.selectOne("shopmapper.selectTotal",vo);
	}
	public Integer allTotal()
	{
		return template.selectOne("shopmapper.allTotal");
	}
	
	public Integer wTotal()
	{
		return template.selectOne("shopmapper.wTotal");
	}
	
	
	public List<ShopVo> list(ShopData shopData){
		
		return template.selectList("shopmapper.selectList", shopData);
	}
	public List<ShopVo> wList(ShopData shopData){
		
		return template.selectList("shopmapper.selectwList", shopData);
	}
	public List<ShopVo> typelist(ShopData shopData){
		
		return template.selectList("shopmapper.cateList", shopData);
	}
	
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
	
	
	
	//review
	public Integer maxno2(OrderVo vo) {
		return template.selectOne("paymapper.maxno2",vo);
	}
	public boolean reviewshopmodify(ShopVo vo) {
		return template.update("shopmapper.reviewshopmodify", vo) > 0;
	}
	public Integer staravg(String vo) {
		return template.selectOne("shopmapper.staravg",vo);
	}
   	public void reviewinsert(ReviewVo vo)
	{
		template.insert("shopmapper.reviewinsert", vo);
	} 
   	public List<ReviewVo> reviewlist(String vo){
		
		return template.selectList("shopmapper.reviewlist",vo);
	}
   	
   	public boolean reviewcheck(Integer vo) {
		return template.selectOne("shopmapper.reviewcheck", vo) != null;
	}
   	public boolean reviewcheck2(ReviewVo vo) {
		return template.selectOne("shopmapper.reviewcheck2", vo) != null;
	}
   	public ReviewVo reviewDetail(ReviewVo vo) {
		return template.selectOne("shopmapper.reviewcheck", vo);
	}
   
   	public boolean reviewdelete(Integer vo) {
		return template.delete("shopmapper.reviedelete", vo) > 0;
	}

   
   
	////reivew
}
