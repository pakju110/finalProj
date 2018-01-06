package hta.user.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import hta.down.model.DownVo;

@Service
public class UserRepository {

	@Resource
	SqlSessionTemplate template;

	public List<UserVo> list() {
		return template.selectList("user.selectList");
	}

	public UserVo detail(UserVo vo) {
		return template.selectOne("user.selectDetail", vo);
	}
	


	public void insert(UserVo vo) {
		template.insert("user.insertOne", vo);
	}
	
	public void insert2(UserVo vo) {
		template.insert("user.insertTwo", vo);
	}
	
	

	public boolean modify(UserVo vo) {
		return template.update("user.modify", vo) > 0;
	}
	
	public boolean grademodify(UserVo vo) {
		return template.update("user.grademodify", vo) > 0;
	}

	public boolean delete(UserVo vo) {
		return template.delete("user.delete", vo) > 0;
	}

	public UserVo idPwChk(UserVo vo) {
		return template.selectOne("user.idPwChk", vo);
	}

}
