package hta.notice.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import hta.model.PathData;


@Service
public class NoticeRepository {

	@Resource
	SqlSessionTemplate template;
	
	public List<NoticeVO> list(PathData pathData)
	{
		return template.selectList("notice.typelist", pathData);
	}
	
	public NoticeVO detail(NoticeVO vo)
	{
		return template.selectOne("notice.selectDetail", vo);
	}
	
	public Integer selectTotal(String vo)
	{
		return template.selectOne("notice.selectTotal",vo);
	}
	
	public void insert(NoticeVO vo)
	{
		template.insert("notice.insertOne", vo);
	} 

	public void reply(NoticeVO vo)
	{
		template.insert("notice.insertRep", vo);
	} 
	
	public void replyCheck(NoticeVO vo)
	{
		template.update("notice.replyCheck", vo);
	}
	
	public void addCount(NoticeVO vo)
	{
		template.update("notice.addCount", vo);
	} 
	
	public NoticeVO noPwChk(NoticeVO vo)
	{
		return template.selectOne("notice.noPwChk", vo);
	}

	public void fileDelete(NoticeVO vo)
	{
		template.update("notice.fileDelete", vo);
	} 
	
	public boolean delete(NoticeVO vo) {
		return template.delete("notice.delete", vo) > 0;
	}
	
	public boolean modify(NoticeVO vo)
	{
		return template.update("notice.modify", vo) > 0;
	}
	
	/*public List<NoticeVO> listSch(NoticeSch sch)
	{
		return template.selectList("notice.selectListSch", sch);
	}
	
	public List<NoticeVO> listSchList(NoticeSch sch)
	{
		return template.selectList("notice.selectListSchList", sch);
	}*/
	

}
