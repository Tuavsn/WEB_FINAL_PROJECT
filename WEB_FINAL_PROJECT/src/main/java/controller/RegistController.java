package controller;

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
import service.IUserService;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.UserService;

@WebServlet(urlPatterns = { "/dang-ky" })
public class RegistController extends HttpServlet {
	private static final long serialVersionUID = -8607374566340550961L;
	CategoryService categoryservice = new CategoryServiceImpl();
	IUserService userService = new UserService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		req.setAttribute("users", userService.findAll());
		List<CategoryModel> allCategory = categoryservice.findAll();
		req.setAttribute("allcategory", allCategory);
		RequestDispatcher rq = req.getRequestDispatcher("views/regist.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
