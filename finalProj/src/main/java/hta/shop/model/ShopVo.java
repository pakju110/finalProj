package hta.shop.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;
@Alias("alishop")
public class ShopVo {
	String rest_id="",brand="",name="",type="",addr="",addr2,contents="",tel="",orifile="",sysfile="",grade,cate2;
	
	int star=0,opentime=0,closetime=0;
	Double xlet,ylng;
	
	
	
	MultipartFile ff;
	
	
	
	
	public String getCate2() {
		return cate2;
	}

	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public Double getXlet() {
		return xlet;
	}

	public void setXlet(Double xlet) {
		this.xlet = xlet;
	}

	public Double getYlng() {
		return ylng;
	}

	public void setYlng(Double ylng) {
		this.ylng = ylng;
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

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public int getOpentime() {
		return opentime;
	}

	public void setOpentime(int opentime) {
		this.opentime = opentime;
	}

	public int getClosetime() {
		return closetime;
	}

	public void setClosetime(int closetime) {
		this.closetime = closetime;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "ShopVo [rest_id=" + rest_id + ", brand=" + brand + ", name=" + name + ", type=" + type + ", addr="
				+ addr + ", addr2=" + addr2 + ", contents=" + contents + ", tel=" + tel + ", orifile=" + orifile
				+ ", sysfile=" + sysfile + ", grade=" + grade + ", star=" + star + ", opentime=" + opentime
				+ ", closetime=" + closetime + ", xlet=" + xlet + ", ylng=" + ylng + ", ff=" + ff + "]";
	}
	
	
	
}
