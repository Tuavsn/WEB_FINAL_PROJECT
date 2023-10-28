package controller.admin.brand;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IBrandService;
import serviceImpl.BrandService;

@WebServlet(urlPatterns = { "/admin-brand-list" })

public class ListBrand extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2614333363814926931L;
	IBrandService brandService = new BrandService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		req.setAttribute("Allbrand", brandService.findAll());
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/brand/listbrand.jsp");
		rq.forward(req, resp);
	}
}
