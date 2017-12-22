package hta.model;

public class Menu {
	
	String name,korName,url;
	
	public Menu() {
		// TODO Auto-generated constructor stub
	}
	public Menu(String name, String korName, String url) {
		super();
		this.name = name;
		this.korName = korName;
		this.url = url;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKorName() {
		return korName;
	}

	public void setKorName(String korName) {
		this.korName = korName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	

}
