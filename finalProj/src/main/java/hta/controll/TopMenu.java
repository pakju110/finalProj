package hta.controll;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import hta.model.Menu;

@Component
public class TopMenu extends ArrayList<Menu>{

	public TopMenu() {
		// TODO Auto-generated constructor stub
		

        add(new Menu("info", "회사소개", "hello"));
        add(new Menu("mypage","마이페이지","mypage"));
        add(new Menu("shop", "제품", "all"));
        add(new Menu("down", "갤러리", "apink"));
        add(new Menu("notice", "고객센터", "notice"));  
        add(new Menu("login", "로그인", "login"));
        add(new Menu("user", "회원가입", "join"));
        
	}
}
