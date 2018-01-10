package hta.pay.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("alispayl")
public class PaylistVo {
	String
	rest_id,user_id,name,payhow,path="";
	
	Date reg_date;
	
	Integer orderno,price,cnt;

	//³¯Â¥ ³¡ 
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
		
		
		
		public String getPayhow() {
			return payhow;
		}
		public void setPayhow(String payhow) {
			this.payhow = payhow;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Integer getCnt() {
			return cnt;
		}
		public void setCnt(Integer cnt) {
			this.cnt = cnt;
		}
		public Integer getOrderno() {
			return orderno;
		}
		public void setOrderno(Integer orderno) {
			this.orderno = orderno;
		}
		@Override
		public String toString() {
			return "PaylistVo [rest_id=" + rest_id + ", user_id=" + user_id + ", name=" + name + ", payhow=" + payhow
					+ ", reg_date=" + reg_date + ", orderno=" + orderno + ", price=" + price + ", cnt=" + cnt + "]";
		}
		
		
	
		

		
		
		


	

		
}
