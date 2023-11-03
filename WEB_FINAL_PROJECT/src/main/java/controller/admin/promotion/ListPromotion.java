package controller.admin.promotion;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = { "/admin-promotion-list" })

public class ListPromotion extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5153597320330902494L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/promotion/listpromotion.jsp");
		rq.forward(req, resp);
	}

}
