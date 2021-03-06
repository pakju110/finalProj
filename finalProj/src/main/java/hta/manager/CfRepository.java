package hta.manager;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import hta.down.model.DownVo;

@Service
public class CfRepository {

	@Resource
	SqlSessionTemplate template;
	//승인된 목록
	public List<CfVo> nonList(String nowMM) {
		return template.selectList("cf.nonList", nowMM);
	}
	public List<CfVo> nowList() {
		return template.selectList("cf.nowList");
	}
	
	
	public List<CfVo> list() {
		return template.selectList("cf.selectList");
	}

	public CfVo detail(CfVo vo) {
		return template.selectOne("cf.selectDetail", vo);
	}

	public void insert(CfVo vo) {
		template.insert("cf.insertOne", vo);
	}
	
	public void insert2(CfVo vo) {
		System.out.println("값 가져오긴하냐 "+vo);
		template.insert("cf.insertTwo", vo);
	}
	
	

	public boolean modify(CfVo vo) {
		return template.update("cf.modify", vo) > 0;
	}
	
	
	public boolean cfapproval(CfVo vo) {
		return template.update("cf.cfapproval", vo) > 0;
	}


	public boolean delete(CfVo vo) {
		return template.delete("cf.delete", vo) > 0;
	}

	public CfVo idPwChk(CfVo vo) {
		return template.selectOne("cf.idPwChk", vo);
	}
	public List<CfVo> inpay() {
		return template.selectList("cf.inpay");
	}
	
	public List<CfVo> inpaysch(CfVo vo) {
		return template.selectList("cf.inpaysch",vo);
	}
	

}
