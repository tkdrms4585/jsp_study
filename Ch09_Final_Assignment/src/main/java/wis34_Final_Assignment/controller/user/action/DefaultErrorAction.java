package wis34_Final_Assignment.controller.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.Directory;

import wis34_Final_Assignment.controller.user.Action;
import wis34_Final_Assignment.controller.user.ActionForward;

public class DefaultErrorAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
//		HttpSession session = request.getSession();

		forward.setRedirect(true);
		forward.setPath("/wis34_Final_Assignment/com/yju/2wda/team4/view/etc/error.jsp");
		return forward;
	}

}
