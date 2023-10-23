package controller.admin.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = { "/admin-product-list" })

public class ListProduct extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5952279382785284219L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/user/list.jsp");
		rq.forward(req, resp);
	}

}
