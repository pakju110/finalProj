package hta.shop.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("alireview")
public class ReviewVo {
	String title,user_id,rest_id ,contents,orifile,sysfile;
	MultipartFile ff;
	
	int orderno, star;
	
	Date reg_date;

	public String getTitle() {
		return title;
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

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRest_id() {
		return rest_id;
	}

	public void setRest_id(String rest_id) {
		this.rest_id = rest_id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public MultipartFile getFf() {
		return ff;
	}

	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}

	public int getOrderno() {
		return orderno;
	}

	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "ReviewVo [title=" + title + ", user_id=" + user_id + ", rest_id=" + rest_id + ", contents=" + contents
				+ ", orifile=" + orifile + ", sysfile=" + sysfile + ", ff=" + ff + ", orderno=" + orderno + ", star="
				+ star + ", reg_date=" + reg_date + "]";
	}

	

}
