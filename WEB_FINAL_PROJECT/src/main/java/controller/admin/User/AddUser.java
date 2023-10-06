package controller.admin.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RoleModel;
import service.IRoleSevice;
import service.IUserService;
import serviceImpl.RoleSevice;
import serviceImpl.UserService;

@WebServlet(urlPatterns = { "/admin-user-add" })

public class AddUser extends HttpServlet{

	IRoleSevice roleSevice = new RoleSevice();
	IUserService userService = new UserService();
	private static final long serialVersionUID = -7038970981016264938L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		req.setAttribute("users", userService.findAll());
		req.setAttribute("roles", roleSevice.findAll());
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/user/adduser.jsp");
		rq.forward(req, resp);
	}
}