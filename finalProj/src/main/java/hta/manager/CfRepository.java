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
		template.insert("cf.insertTwo", vo);
	}
	
	

	public boolean modify(CfVo vo) {
		return template.update("cf.modify", vo) > 0;
	}
	
	public boolean grademodify(CfVo vo) {
		return template.update("cf.grademodify", vo) > 0;
	}

	public boolean delete(CfVo vo) {
		return template.delete("cf.delete", vo) > 0;
	}

	public CfVo idPwChk(CfVo vo) {
		return template.selectOne("cf.idPwChk", vo);
	}

}
