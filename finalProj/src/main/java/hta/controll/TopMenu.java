package hta.controll;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import hta.model.Menu;

@Component
public class TopMenu extends ArrayList<Menu>{

	public TopMenu() {
		// TODO Auto-generated constructor stub
		

        add(new Menu("info", "ȸ��Ұ�", "hello"));
        add(new Menu("mypage","����������","mypage"));
        add(new Menu("shop", "��ǰ", "all"));
        add(new Menu("down", "������", "apink"));
        add(new Menu("notice", "������", "notice"));  
        add(new Menu("login", "�α���", "login"));
        add(new Menu("user", "ȸ������", "join"));
        
	}
}
