package hta.pay.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;



@Service
public class PayRepository {

	@Resource
	SqlSessionTemplate template;

	public List<PayVo> list() {
		return template.selectList("paymapper.selectList");
	}
	public List<PaylistVo> list2(String vo) {
		return template.selectList("paymapper.selectList2", vo);
	}
	public PayVo detail(PayVo vo) {
		return template.selectOne("paymapper.userselectDetail", vo);
	}

	public void insert(PayVo vo) {
		template.insert("paymapper.insertOne", vo);
	}

	public boolean modify(PayVo vo) {
		return template.update("paymapper.modify", vo) > 0;
	}

	public boolean delete(PayVo vo) {
		return template.delete("paymapper.delete", vo) > 0;
	}

	public PayVo idPwChk(PayVo vo) {
		return template.selectOne("paymapper.idPwChk", vo);
	}

}
