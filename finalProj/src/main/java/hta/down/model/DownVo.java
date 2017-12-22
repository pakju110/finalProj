package hta.down.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("alisdown")
public class DownVo {
	String
	pw,title,content,oridown,updownfile,path="";
	
	Date reg_date;
	
	Integer id;

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



		public String getPw() {
			return pw;
		}



		public void setPw(String pw) {
			this.pw = pw;
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



		public String getOridown() {
			return oridown;
		}



		public void setOridown(String oridown) {
			this.oridown = oridown;
		}



		public String getUpdownfile() {
			return updownfile;
		}



		public void setUpdownfile(String updownfile) {
			this.updownfile = updownfile;
		}



		public Integer getId() {
			return id;
		}



		public void setId(Integer id) {
			this.id = id;
		}



		@Override
		public String toString() {
			return "DownVo [oridown=" + oridown + ", updownfile=" + updownfile + "]";
		}

		
}
