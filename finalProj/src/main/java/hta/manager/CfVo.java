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
	sinchung,rest_id,approval,path="";
	
	String cf_oriimg="",cf_sysimg="", startDD,nowMM;
	
	Date reg_date,start_date,end_date,todate,todate2;;
	
	ArrayList<String> dds;
	
	MultipartFile ff,ff2;
	
	Integer no,price;
	
	Integer year1,year2,month1,month2;
	
	Object isNums;
	
	
	
	



	public Date getTodate() {
		return todate;
	}



	public void setTodate(Date todate) {
		this.todate = todate;
	}



	public Date getTodate2() {
		return todate2;
	}



	public void setTodate2(Date todate2) {
		this.todate2 = todate2;
	}



	public Integer getYear1() {
		return year1;
	}



	public void setYear1(Integer year1) {
		this.year1 = year1;
	}



	public Integer getYear2() {
		return year2;
	}



	public void setYear2(Integer year2) {
		this.year2 = year2;
	}



	public Integer getMonth1() {
		return month1;
	}



	public void setMonth1(Integer month1) {
		this.month1 = month1;
	}



	public Integer getMonth2() {
		return month2;
	}



	public void setMonth2(Integer month2) {
		this.month2 = month2;
	}



	public Integer getPrice() {
		return price;
	}



	public void setPrice(Integer price) {
		this.price = price;
	}



	public Object getIsNums() {
		return isNums;
	}



	public void setIsNums(Object isNums) {
		this.isNums = isNums;
	}



	public Integer getNo() {
		return no;
	}



	public void setNo(Integer no) {
		this.no = no;
	}



	public String getStartDD() {
		return startDD;
	}



	public void setStartDD(String startDD) {
		this.startDD = startDD;
	}



	public String getNowMM() {
		return nowMM;
	}



	public void setNowMM(String nowMM) {
		this.nowMM = nowMM;
	}



	public ArrayList<String> getDds() {
		return dds;
	}

	public void setDds(ArrayList<String> dds) {
		this.dds = dds;
	}


	public String getSinchung() {
		return sinchung;
	}


	public void setSinchung(String sinchung) {
		this.sinchung = sinchung;
	}


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
		return "CfVo [sinchung=" + sinchung + ", rest_id=" + rest_id + ", approval=" + approval + ", cf_oriimg="
				+ cf_oriimg + ", cf_sysimg=" + cf_sysimg + ", startDD=" + startDD + ", nowMM=" + nowMM + ", reg_date="
				+ reg_date + ", start_date=" + start_date + ", end_date=" + end_date + ", todate=" + todate
				+ ", todate2=" + todate2 + ", dds=" + dds + ", ff=" + ff + ", ff2=" + ff2 + ", no=" + no + ", price="
				+ price + ", year1=" + year1 + ", year2=" + year2 + ", month1=" + month1 + ", month2=" + month2
				+ ", isNums=" + isNums + "]";
	}


}
