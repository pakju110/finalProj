package hta.shop.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("alisorder")
public class OrderVo {
	String
	rest_id,user_id,phone,address,payhow,content,path="";
	
	Date reg_date;
	
	Integer price,orderno;

	//파일체크 메소드
		//이미지일때는 이미지/ 이미지 아닐땐 파일명
	/*	public boolean isImgChk() {

			boolean res = false;
			
			ArrayList<String> fileArr = new ArrayList<>();
			fileArr.add("jpg");
			fileArr.add("jpeg");
			fileArr.add("bmp");
			fileArr.add("gif");
			fileArr.add("png");
			
			//파일명이 없지 않을때
			if (sysFile != null && !sysFile.equals("") && !sysFile.equals("null")) {
				String ext = sysFile.toLowerCase().substring(sysFile.lastIndexOf(".") + 1);
				res = fileArr.contains(ext);
			}
			return res;
		}*/
		
		//날짜 캐스팅
		/*public String strBirth()
		{
			return new SimpleDateFormat("yyyy-MM-dd").format(birth);
		}
		
		public void parseBirth(String strBirth)
		{
			try {
				birth = new SimpleDateFormat("yyyy-MM-dd").parse(strBirth);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		

		public Date getBirth() {
			return birth;
		}

		public void setBirth(Date birth) {
			this.birth = birth;
		}*/
	//날짜 끝 
		public String strReg_date()
		{
			return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(reg_date);
		}
		public void parseReg_date(String strReg_date)
		{
			try {
				reg_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strReg_date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		public Date getReg_date() {
			return reg_date;
		}

		public void setReg_date(Date reg_date) {
			this.reg_date = reg_date;
		}
		public String getRest_id() {
			return rest_id;
		}
		public void setRest_id(String rest_id) {
			this.rest_id = rest_id;
		}
		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}
		
		public Integer getPrice() {
			return price;
		}
		public void setPrice(Integer price) {
			this.price = price;
		}
		
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getPayhow() {
			return payhow;
		}
		public void setPayhow(String payhow) {
			this.payhow = payhow;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		
		public String getPath() {
			return path;
		}
		public void setPath(String path) {
			this.path = path;
		}
		public Integer getOrderno() {
			return orderno;
		}
		public void setOrderno(Integer orderno) {
			this.orderno = orderno;
		}
		@Override
		public String toString() {
			return "OrderVo [rest_id=" + rest_id + ", user_id=" + user_id + ", phone=" + phone + ", address=" + address
					+ ", payhow=" + payhow + ", content=" + content + ", path=" + path + ", reg_date=" + reg_date
					+ ", price=" + price + ", orderno=" + orderno + "]";
		}
		
		
		
		
		

		
		
		


	

		
}
