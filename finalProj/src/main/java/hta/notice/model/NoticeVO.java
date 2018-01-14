package hta.notice.model;


import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("noticeVo")
public class NoticeVO {


	
	Integer no=0, gno=0;
	Integer cnt=-1;
	String id="", gid;
	String grade="";
	String pname="";
	String cate="";
	String title="";
	String content="";
	String orifile="";
	String sysfile="";
	Integer re = 0;
	MultipartFile ff;
	Date regdate;
	
	public String getContentBR() {
	      return content.replaceAll("\n", "<br>");
	   }
	
	
	
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public Integer getRe() {
		return re;
	}
	public void setRe(Integer re) {
		this.re = re;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	
	public Integer getGno() {
		return gno;
	}
	public void setGno(Integer gno) {
		this.gno = gno;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOrifile() {
		return orifile;
	}
	public void setOrifile(String orifile) {
		this.orifile = orifile;
	}
	public String getSysfile() {
		return sysfile;
	}
	public void setSysfile(String sysfile) {
		this.sysfile = sysfile;
	}
	public MultipartFile getFf() {
		return ff;
	}
	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", gno=" + gno + ", cnt=" + cnt + ", id=" + id + ", gid=" + gid + ", grade="
				+ grade + ", pname=" + pname + ", cate=" + cate + ", title=" + title + ", content=" + content
				+ ", orifile=" + orifile + ", sysfile=" + sysfile + ", re=" + re + ", ff=" + ff + ", regdate=" + regdate
				+ "]";
	}
	
	
	
}
