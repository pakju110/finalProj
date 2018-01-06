package hta.model;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class PathData {

	String cate1,cate2, service, path, depth="../../";
	
	Object dd;
	
	
	
	boolean redirect , btnGo = false;
	
	@Resource
	ArrayList<Menu> topMenu;	
	
	ArrayList<Menu> subMenu;
	
	HttpServletRequest request;
	
	HttpSession session;
	
	int limit = 3, pageLimit =4;
	int nowPage = 1;
	int total;
	
	public int getStartPage() {
		return (nowPage-1)/pageLimit*pageLimit+1;
	}
	public int getEndPage() {
		int res = getStartPage()+pageLimit-1;
		if(res>getTotalPage())
			res=getTotalPage();
		return  res;
	}
	
	
	public int getTotalPage() {
		
		int res = total/limit;	
		if(total%limit!=0)
			res++;	
		
		return res;
	}
	
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getStartNum() {
		return (nowPage-1)*limit+1;
	}
	public int getEndNum() {
		return nowPage*limit;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		if(total < limit)
			this.limit = total;
		else
		this.limit = limit;
	}
	public int getPageLimit() {
		return pageLimit;
	}
	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}
	
	
	public boolean isBtnGo() {
		return btnGo;
	}

	public void setBtnGo(boolean btnGo) {
		this.btnGo = btnGo;
	}	

	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}

	public ArrayList<Menu> getTopMenu() {
		return topMenu;
	}

	public void setTopMenu(ArrayList<Menu> topMenu) {
		this.topMenu = topMenu;
	}

	public ArrayList<Menu> getSubMenu() {
		return subMenu;
	}

	public void setSubMenu(ArrayList<Menu> subMenu) {
		this.subMenu = subMenu;
	}
	
	public String getDepth() {
		return depth;
	}

	public void setDepth(String depth) {
		this.depth = depth;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return redirect;
	}

	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}

	
	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	

	public Object getDd() {
		return dd;
	}

	public void setDd(Object dd) {
		this.dd = dd;
	}

	public String getCate1() {
		return cate1;
	}

	public void setCate1(String cate1) {
		this.cate1 = cate1;
	}

	public String getCate2() {
		return cate2;
	}

	public void setCate2(String cate2) {
		this.cate2 = cate2;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	@Override
	public String toString() {
		return "PathData [cate1=" + cate1 + ", cate2=" + cate2 + ", service=" + service + "]";
	}
	
	

}
