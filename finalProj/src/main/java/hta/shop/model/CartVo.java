package hta.shop.model;

import org.apache.ibatis.type.Alias;

@Alias("alicart")
public class CartVo {
	String name,id,rest_id;
	int orderno=0, no, cnt,price;

	public String getRest_id() {
		return rest_id;
	}
	public void setRest_id(String rest_id) {
		this.rest_id = rest_id;
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
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	@Override
	public String toString() {
		return "CartVo [name=" + name + ", id=" + id + ", rest_id=" + rest_id + ", orderno=" + orderno + ", no=" + no
				+ ", cnt=" + cnt + ", price=" + price + "]";
	}
	
	

}
