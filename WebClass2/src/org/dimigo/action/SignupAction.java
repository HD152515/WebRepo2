package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVo;

public class SignupAction implements IAction{

	private void validate(UserVo vo) throws Exception {
		if(CommonUtil.isEmpty(vo.getId()))
			throw new Exception("아이디를 입력해 주세요.");
		if(CommonUtil.isEmpty(vo.getPwd()))
			throw new Exception("비밀번호를 입력해 주세요.");
		if(CommonUtil.isEmpty(vo.getName()))
			throw new Exception("이름을 입력해 주세요.");
		if(CommonUtil.isEmpty(vo.getNickname()))
			throw new Exception("닉네임을 입력해 주세요.");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			// 1. 입력갑 추출
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String nickname = request.getParameter("nickname");
			System.out.printf("id : %s pwd : %s name : %s nickname : %s\n",id,pwd,name,nickname);
						
			// 2. 입력값 검증
			UserVo user = new UserVo(id, name, nickname);
			user.setPwd(pwd);
			validate(user);
			
			// 회원가입 처리
			UserService service = new UserService();
			service.singup(user);
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}
}