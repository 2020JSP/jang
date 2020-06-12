package sec04.ex01;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class LoginImpl implements HttpSessionBindingListener {	//HttpSessionBindingListener를 구현해 세션에
	String user_id;												//바인딩 시 이벤트 처리
	String user_pw;
	static int total_user = 0;	//세션에 바인딩 시 1씩 증가

	public LoginImpl() {
	}

	public LoginImpl(String user_id, String user_pw) {
		this.user_id = user_id;
		this.user_pw = user_pw;
	}

	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {	//세선에 저장 시 접속자수를 증가
		System.out.println("사용자 접속");
		++total_user;
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0) {  //세션에서 소멸 시 접속자수 감소
		System.out.println("사용자 접속 해제");
		total_user--;
	}
}
