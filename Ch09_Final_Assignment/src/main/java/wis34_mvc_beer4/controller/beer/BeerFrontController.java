package wis34_mvc_beer4.controller.beer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wis34_mvc_beer4.controller.beer.action.InsertBeerAction;
import wis34_mvc_beer4.model.beer.BeerPageInfoVO;

public class BeerFrontController extends HttpServlet implements Servlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		command = command.substring(command.lastIndexOf("/"));
		
		HttpSession session = request.getSession();
		BeerPageInfoVO bpiVO;

		if (session.getAttribute("beerPageInfoVO") == null) {
			bpiVO = new BeerPageInfoVO();
			session.setAttribute("beerPageInfoVO", bpiVO);
		} else {
			bpiVO = (BeerPageInfoVO)session.getAttribute("beerPageInfoVO");
		}
		
		ActionForward forward = null;
		Action action = null;

		System.out.println("command = " + command);

		switch (command) {
		case "/insertBeer.be": // 기본데이터 입력 C-모듈
			action = new InsertBeerAction();
			break;
		}
		
		try {
			forward = action.execute(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
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
