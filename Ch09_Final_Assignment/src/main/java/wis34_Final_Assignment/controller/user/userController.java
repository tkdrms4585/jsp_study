package wis34_Final_Assignment.controller.user;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;
import wis34_Final_Assignment.controller.user.*;
import wis34_Final_Assignment.controller.user.action.DefaultErrorAction;
import wis34_Final_Assignment.model.artholic.*;

public class userController extends HttpServlet implements Servlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		command = command.substring(command.lastIndexOf("/"));

		ActionForward forward = null;
		Action action = null;

		switch (command) {
		case "/login.be" :
			action = new LoginAction();
			break;

		default:
			action = new DefaultErrorAction();
			break;
		}

		try {
			forward = action.execute(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
//		String RequestURI = request.getRequestURI();
//		String contextPath = request.getContextPath();
//		String command = RequestURI.substring(contextPath.length());
//		
//		HttpSession session = request.getSession();
//		
//		request.setCharacterEncoding("utf-8");
////		String actionType = request.getParameter("actionType");
//
//		userDTO user;
//		userDAO userDAO;
//		ArrayList<userDTO> userList;
//
////		userPageInfoVO bpiVO;
////
////		if (session.getAttribute("userPageInfoVO") == null) {
////			bpiVO = new userPageInfoVO();
////			session.setAttribute("userPageInfoVO", bpiVO);
////		} else {
////			bpiVO = (userPageInfoVO)session.getAttribute("userPageInfoVO");
////		}
////
////		userDAO = new userDAO();
//////		userDAO.jdbcDriverLoad();
////
////		boolean result;
////		String msg = "실행결과: ";
////
////		String displayRecordCnt;
////		int drc;
////
////		String currentPageNo;
////		int cpn;
////
////		switch (actionType) {
////		case "C": // 기본데이터 입력 C-모듈
////			user = new userDTO();
////
////			user.setB_code(request.getParameter("b_code"));
////			user.setB_category(request.getParameter("b_category"));
////			user.setB_name(request.getParameter("b_name"));
////			user.setB_country(request.getParameter("b_country"));
////			user.setB_price(Integer.parseInt(request.getParameter("b_price")));
////			user.setB_alcohol(request.getParameter("b_alcohol"));
////			user.setB_content(request.getParameter("b_content"));
////			user.setB_like(0);
////			user.setB_dislike(0);
////			user.setB_image("baseImage.jsp");
////
////			result = userDAO.insertuser(user);
////
////			if (result == true) {
////				request.getRequestDispatcher("/index.jsp").forward(request, response);
////			} else {
////				request.getRequestDispatcher("/com/yju/2wda/team4/view/etc/error.jsp").forward(request, response);
////			}
////			break;
////
////		case "R": // 페이징 기능 없는 R-모듈
////
////			userList = userDAO.getuserList();
////
////			request.setAttribute("userList", userList);
////			request.getRequestDispatcher("/com/yju/2wda/team4/view/user/user_r.jsp").forward(request, response);
////
////			break;
////
////		case "R4": // 페이지 기능 포함 R-모듈
////		
////			currentPageNo = request.getParameter("currentPageNo");
////			cpn = (currentPageNo == null) ? 0 : Integer.parseInt(currentPageNo);
////
////			bpiVO.setCurrentPageNo(cpn);
////			bpiVO.adjPageInfo();
////
////			userList = userDAO.getuserListForPage(bpiVO);
////
////			request.setAttribute("userList", userList);
////			request.getRequestDispatcher("/com/yju/2wda/team4/view/user/user_r4.jsp").forward(request, response);
////
////			break;
////
////		case "R_DRC": // 페이지당 디스플레이 레코드 갯수 변경 처리
////		
////			displayRecordCnt = request.getParameter("displayRecordCnt");
////			drc = (displayRecordCnt == null) ? 10 : Integer.parseInt(displayRecordCnt);
////
////			bpiVO.setLimitCnt(drc);
////			bpiVO.setCurrentPageNo(0);
////			bpiVO.adjPageInfo();
////
////			request.getRequestDispatcher("/index.jsp").forward(request, response);
////			break;
////
////		case "D_ID": // 조건에 해당하는 레코드 삭제 처리
////
////			int b_id = Integer.parseInt(request.getParameter("b_id"));
////
////			result = userDAO.deleteuser(b_id);
////
////			if (result == true) {
////				request.getRequestDispatcher("/com/yju/2wda/team4/controller/user/userController.be?actionType=D").forward(request, response);
////			} else {
////				request.getRequestDispatcher("/com/yju/2wda/team4/view/etc/error.jsp").forward(request, response);
////			}
////			break;
////
////		case "D": // 페이지당 디스플레이 레코드 갯수 출력 및 삭제 처리
////		
////			currentPageNo = request.getParameter("currentPageNo");
////			cpn = (currentPageNo == null) ? 0 : Integer.parseInt(currentPageNo);
////
////			bpiVO.setCurrentPageNo(cpn);
////			bpiVO.adjPageInfo();
////
////			userList = userDAO.getuserListForPage(bpiVO);
////
////			request.setAttribute("userList", userList);
////			request.getRequestDispatcher("/com/yju/2wda/team4/view/user/user_d.jsp").forward(request, response);
////			break;
////
////		case "U": // 페이지당 디스플레이 레코드 갯수 출력 및 수정 처리
////		
////			currentPageNo = request.getParameter("currentPageNo");
////			cpn = (currentPageNo == null) ? 0 : Integer.parseInt(currentPageNo);
////
////			bpiVO.setCurrentPageNo(cpn);
////			bpiVO.adjPageInfo();
////
////			userList = userDAO.getuserListForPage(bpiVO);
////
////			request.setAttribute("userList", userList);
////			request.getRequestDispatcher("/com/yju/2wda/team4/view/user/user_u.jsp").forward(request, response);
////			break;
////
////		case "U2": // b_id 값에 해당하는 DB레코드 정보 가져오기
////		
////			b_id = Integer.parseInt(request.getParameter("b_id"));
////			user = userDAO.getuser(b_id);
////
////			request.setAttribute("user", user);
////			request.getRequestDispatcher("/com/yju/2wda/team4/view/user/user_u2.jsp").forward(request, response);
////			break;
////
////		case "U_ID": // b_id에 해당하는 DB레코드 정보 수정하기
////		
////			user = new userDTO();
////
////			user.setB_id(Integer.parseInt(request.getParameter("b_id")));
////			user.setB_code(request.getParameter("b_code"));
////			user.setB_category(request.getParameter("b_category"));
////			user.setB_name(request.getParameter("b_name"));
////			user.setB_country(request.getParameter("b_country"));
////			user.setB_price(Integer.parseInt(request.getParameter("b_price")));
////			user.setB_alcohol(request.getParameter("b_alcohol"));
////			user.setB_content(request.getParameter("b_content"));
////			user.setB_like(Integer.parseInt(request.getParameter("b_like")));
////			user.setB_dislike(Integer.parseInt(request.getParameter("b_dislike")));
////			user.setB_image(request.getParameter("b_image"));
////
////			result = userDAO.updateuser(user);
//
//			if (result == true) {
//				request.getRequestDispatcher("/index.jsp").forward(request, response);
//			} else {
//				request.getRequestDispatcher("/com/yju/2wda/team4/view/etc/error.jsp").forward(request, response);
//			}
//			break;
//
//	}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

}
