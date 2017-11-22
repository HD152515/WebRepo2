package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionAction implements IAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user")==null){
			// sendRedirect와 RequestDispatcher 같은 기능
			// sendRedirect는  set한 값이 전달이 안되고 RequestDispatcher는 전달 가능
			response.sendRedirect("jsp/login.jsp");
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("jsp/sessionInfo.jsp");
			rd.forward(request, response);
		}
	}

}
