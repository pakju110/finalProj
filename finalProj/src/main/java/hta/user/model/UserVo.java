package hta.user.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("alisuser")
public class UserVo {
	String
	user_id,user_pw,user_name,user_phone,user_address,grade,bookmark="",path="";
	
	String orifile="",sysfile="";
	
	Date reg_date;
	
	Integer id;
	
	MultipartFile ff;
	
	

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
	
	

	public MultipartFile getFf() {
		return ff;
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

	public void setFf(MultipartFile ff) {
		this.ff = ff;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

		public String getUser_id() {
			return user_id;
		}
		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}

		public String getUser_pw() {
			return user_pw;
		}

		public void setUser_pw(String user_pw) {
			this.user_pw = user_pw;
		}

		public String getUser_name() {
			return user_name;
		}

		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}

		public String getUser_phone() {
			return user_phone;
		}

		public void setUser_phone(String user_phone) {
			this.user_phone = user_phone;
		}

		public String getUser_address() {
			return user_address;
		}

		public void setUser_address(String user_address) {
			this.user_address = user_address;
		}
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

		public String getBookmark() {
			return bookmark;
		}

		public void setBookmark(String bookmark) {
			this.bookmark = bookmark;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		@Override
		public String toString() {
			return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_phone="
					+ user_phone + ", user_address=" + user_address + ", grade=" + grade + ", bookmark=" + bookmark
					+ ", reg_date=" + reg_date + ", id=" + id + ", ff=" + ff + "]";
		}

		/*@Override
		public String toString() {
			return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_phone="
					+ user_phone + ", user_address=" + user_address + ", grade=" + grade + ", bookmark=" + bookmark
					+ ", path=" + path + ", reg_date=" + reg_date + ", id=" + id + "]";
		}*/
	
		
}
