package hta.shop.model;

import java.util.ArrayList;


public class MenuChange {

	ArrayList<MenuVo>mm;
	/*ArrayList<OptionVo>opp;*/

	public ArrayList<MenuVo> getMm() {
		return mm;
	}



	public void setMm(ArrayList<MenuVo> mm) {
		this.mm = mm;
	}


/*
	public ArrayList<OptionVo> getOpp() {
		return opp;
	}



	public void setOpp(ArrayList<OptionVo> opp) {
		this.opp = opp;
	}
*/


	@Override
	public String toString() {
		return "MenuChange [mm=" + mm + "]";
	}
	
	
}
