package controller.admin.category;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategoryModel;
import service.CategoryService;
import serviceImpl.CategoryServiceImpl;

@WebServlet(urlPatterns = { "/admin-category-list" })

public class ListCategory extends HttpServlet{

	/**
	 * 
	 */
	CategoryService categoryservice = new CategoryServiceImpl();
	private static final long serialVersionUID = -5806901114756840139L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		List<CategoryModel> allCategory = categoryservice.findAll();
		request.setAttribute("allcategory", allCategory);
		
		RequestDispatcher rq = request.getRequestDispatcher("views/admin/category/listcategory.jsp");
		rq.forward(request, resp);
	}
}
