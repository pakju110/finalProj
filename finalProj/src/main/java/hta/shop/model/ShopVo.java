package hta.shop.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;
@Alias("alishop")
public class ShopVo {
	String id="",brand="",name="",type="",addr="",contents="",tel="",orifile="",sysfile="",grade;
	
	int star=0,opentime=0,closetime=0;
	
	
	MultipartFile ff;
	
	
	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public MultipartFile getFf() {
		return ff;
	}

	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	@Override
	public String toString() {
		return "ShopVo [id=" + id + ", brand=" + brand + ", name=" + name + ", type=" + type + ", addr=" + addr
				+ ", contents=" + contents + ", tel=" + tel + ", orifile=" + orifile + ", sysfile=" + sysfile
				+ ", grade=" + grade + ", star=" + star + ", opentime=" + opentime + ", closetime=" + closetime
				+ ", ff=" + ff + "]";
	}
	
	
	
}
