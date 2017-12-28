package hta.shop.model;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;
@Alias("alimenu")
public class MenuVo {
	String id,name,type,orifile,sysfile,state ="on";
	
	int price,no;
	
	
	MultipartFile ff;


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public MultipartFile getFf() {
		return ff;
	}


	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}


	@Override
	public String toString() {
		return "MenuVo [id=" + id + ", name=" + name + ", type=" + type + ", orifile=" + orifile + ", sysfile="
				+ sysfile + ", state=" + state + ", price=" + price + ", no=" + no + ", ff=" + ff + "]";
	}

	
	

	
	
}
