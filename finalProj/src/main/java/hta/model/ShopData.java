package hta.model;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import hta.shop.model.CartList;
import hta.shop.model.MenuChange;

@Component
public class ShopData {

	String cate1,cate2, service, path="", depth="../../";
	
	Object dd,dd2,cart,review;
	
	MenuChange menuChange;
	CartList cartList;
	HttpSession session;
	
	
	public Object getReview() {
		return review;
	}

	public void setReview(Object review) {
		this.review = review;
	}

	public CartList getCartList() {
		return cartList;
	}

	public void setCartList(CartList cartList) {
		this.cartList = cartList;
	}

	public Object getCart() {
		return cart;
	}

	public void setCart(Object cart) {
		this.cart = cart;
	}

	public String getDepth() {
		return depth;
	}

	public void setDepth(String depth) {
		this.depth = depth;
	}
	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
	}

	public MenuChange getMenuChange() {
		return menuChange;
	}

	public void setMenuChange(MenuChange menuChange) {
		this.menuChange = menuChange;
	}

	@Resource
	ArrayList<Menu> topMenu;
	
	
	ArrayList<Menu> subMenu;
	
	boolean redirect;


	public Object getDd2() {
		return dd2;
	}

	public void setDd2(Object dd2) {
		this.dd2 = dd2;
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

	HttpServletRequest request;
	
	
	
	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
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
