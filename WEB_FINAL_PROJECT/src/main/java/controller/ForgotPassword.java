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

@WebServlet(urlPatterns = { "/change-password" })

public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = -7876039581512588764L;
	CategoryService categoryservice = new CategoryServiceImpl();
	IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		List<CategoryModel> allCategory = categoryservice.findAll();
		req.setAttribute("allcategory", allCategory);
		req.setAttribute("users", userService.findAll());
		RequestDispatcher rq = req.getRequestDispatcher("views/forgotpassword.jsp");
		rq.forward(req, resp);
	}
}
