package hta.shop.model;

import java.util.ArrayList;

public class CartList {
	ArrayList<CartVo> cartlist;

	public ArrayList<CartVo> getCartlist() {
		return cartlist;
	}

	public void setCartlist(ArrayList<CartVo> cartlist) {
		this.cartlist = cartlist;
	}

	@Override
	public String toString() {
		return "CartList [cartlist=" + cartlist + "]";
	}
	
	
	
	

}
