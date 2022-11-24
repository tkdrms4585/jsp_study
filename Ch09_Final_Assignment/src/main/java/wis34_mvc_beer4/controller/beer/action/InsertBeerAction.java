package wis34_mvc_beer4.controller.beer.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wis34_mvc_beer4.controller.beer.Action;
import wis34_mvc_beer4.controller.beer.ActionForward;
import wis34_mvc_beer4.model.beer.BeerDAO;
import wis34_mvc_beer4.model.beer.BeerDTO;

public class InsertBeerAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		BeerDAO beerDAO = new BeerDAO();
		BeerDTO beer = new BeerDTO();
		beer.setB_code(request.getParameter("b_code"));
		beer.setB_category(request.getParameter("b_category"));
		beer.setB_name(request.getParameter("b_name"));
		beer.setB_country(request.getParameter("b_country"));
		beer.setB_price(Integer.parseInt(request.getParameter("b_price")));
		beer.setB_alcohol(request.getParameter("b_alcohol"));
		beer.setB_content(request.getParameter("b_content"));
		beer.setB_like(0);
		beer.setB_dislike(0);
		beer.setB_image("baseImage.jsp");

		boolean result = beerDAO.insertBeer(beer);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);

		if (result == true) {
			forward.setPath("/index.jsp");
		} else {
			forward.setPath("/com/yju/2wda/team4/view/etc/error.jsp");
		}
		
		return forward;
	}

}
