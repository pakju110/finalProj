package hta.controll;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

@Component
public class MyProvider implements ApplicationContextAware {
	////// spring Container ����� �ڵ����� ȣ�� ��
	//// context�� ���� �� ����
	/// Bean���� ��� �Ͽ� �����Ͽ�
	ApplicationContext context;
	public ApplicationContext getContext() {
		return context;
	}
	@Override
	public void setApplicationContext(ApplicationContext arg0) throws BeansException {
		// TODO Auto-generated method stub
		System.out.println("spring container ����� �۵�");
		context = arg0;
	}
}
