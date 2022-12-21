package wis34_Final_Assignment.controller.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wis34_Final_Assignment.controller.user.Action;
import wis34_Final_Assignment.controller.user.ActionForward;
import wis34_Final_Assignment.model.artholic.userDAO;
import wis34_Final_Assignment.model.artholic.userDTO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		
		userDAO dao = new userDAO();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		userDTO dto = new userDTO();
		
		dto.setId(id);
		dto.setPassword(password);
		
		userDTO result = dao.login(dto);
		
		if(result.getName() != null) { // 로그인 성공
			세션=result 
		} else { // 실패
			
		}
		
		return null;
	}
	
	

}
