package hta.notice.model;

import java.util.ArrayList;

import org.apache.ibatis.type.Alias;

@Alias("noticeSch")
public class NoticeSch {
	
	String kind, what;
	
	Integer cnt;
	
	public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}

	ArrayList<NoticeSch> list;

	public ArrayList<NoticeSch> getList() {
		return list;
	}

	public void setList(ArrayList<NoticeSch> list) {
		this.list = list;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getWhat() {
		return what;
	}

	public void setWhat(String what) {
		this.what = what;
	}
	
	

}
