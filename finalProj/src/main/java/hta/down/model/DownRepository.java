package hta.down.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import hta.down.model.DownVo;

@Service
public class DownRepository {

	@Resource
	SqlSessionTemplate template;

	public List<DownVo> list() {
		return template.selectList("downmapper.selectList");
	}

	public DownVo detail(DownVo vo) {
		return template.selectOne("downmapper.selectDetail", vo);
	}

	public void insert(DownVo vo) {
		template.insert("downmapper.insertOne", vo);
	}

	public boolean modify(DownVo vo) {
		return template.update("downmapper.modify", vo) > 0;
	}

	public boolean delete(DownVo vo) {
		return template.delete("downmapper.delete", vo) > 0;
	}

	public DownVo idPwChk(DownVo vo) {
		return template.selectOne("downmapper.idPwChk", vo);
	}

}
