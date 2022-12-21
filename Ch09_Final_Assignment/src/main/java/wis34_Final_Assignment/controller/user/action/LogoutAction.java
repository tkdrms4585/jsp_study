package wis34_Final_Assignment.controller.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wis34_Final_Assignment.controller.user.Action;
import wis34_Final_Assignment.controller.user.ActionForward;
import wis34_Final_Assignment.model.artholic.userDAO;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		
		session.setAttribute("loginInfo", null);
		
		session.setAttribute("alert", "로그아웃 하였습니다.");
		forward.setPath("/wis34_Final_Assignment");
		forward.setRedirect(true);
		
		return forward;
	}

}
