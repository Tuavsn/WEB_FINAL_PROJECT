package controller.admin.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserModel;
import service.IRoleSevice;
import service.IUserService;
import serviceImpl.RoleSevice;
import serviceImpl.UserService;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-user-edit" })

public class EditUser extends HttpServlet{

	IRoleSevice roleSevice = new RoleSevice();
	IUserService userService = new UserService();
	private static final long serialVersionUID = -7038970981016264938L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		UserModel model = FormUtil.toModel(UserModel.class, request);
		if(model.getId() != null) {
			model = userService.findOne(model.getId());
		}
		request.setAttribute("users", userService.findAll());
		request.setAttribute("roles", roleSevice.findAll());
		request.setAttribute("model", model);
		RequestDispatcher rq = request.getRequestDispatcher("views/admin/user/edituser.jsp");
		rq.forward(request, resp);
	}
}
