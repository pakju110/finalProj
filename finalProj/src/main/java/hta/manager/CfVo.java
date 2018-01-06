package hta.manager;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("aliscf")
public class CfVo {
	String
	rest_id,approval,path="";
	
	String cf_oriimg="",cf_sysimg="";
	
	Date reg_date,start_date,end_date;
	
	
	
	MultipartFile ff,ff2;
	
	
	



	public MultipartFile getFf() {
		return ff;
	}



	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}



	public String getRest_id() {
		return rest_id;
	}



	public void setRest_id(String rest_id) {
		this.rest_id = rest_id;
	}



	public String getApproval() {
		return approval;
	}



	public void setApproval(String approval) {
		this.approval = approval;
	}



	public String getCf_oriimg() {
		return cf_oriimg;
	}



	public void setCf_oriimg(String cf_oriimg) {
		this.cf_oriimg = cf_oriimg;
	}



	public String getCf_sysimg() {
		return cf_sysimg;
	}



	public void setCf_sysimg(String cf_sysimg) {
		this.cf_sysimg = cf_sysimg;
	}



	public Date getReg_date() {
		return reg_date;
	}



	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}



	public Date getStart_date() {
		return start_date;
	}



	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}



	public Date getEnd_date() {
		return end_date;
	}



	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}






	public MultipartFile getFf2() {
		return ff2;
	}



	public void setFf2(MultipartFile ff2) {
		this.ff2 = ff2;
	}



	@Override
	public String toString() {
		return "CfVo [rest_id=" + rest_id + ", approval=" + approval + ", cf_oriimg=" + cf_oriimg + ", cf_sysimg="
				+ cf_sysimg + ", reg_date=" + reg_date + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", ff2=" + ff2 + "]";
	}
	
	
	
	
}
