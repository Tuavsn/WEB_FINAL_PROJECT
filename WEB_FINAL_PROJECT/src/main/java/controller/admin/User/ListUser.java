package controller.admin.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import constant.SystemConstant;
import model.UserModel;
import paging.PageRequest;
import paging.Pageble;
import service.IUserService;
import serviceImpl.UserService;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-user-list" })

public class ListUser extends HttpServlet{

	
	private static final long serialVersionUID = -982040941730206481L;
	IUserService userService = new UserService();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		UserModel model = FormUtil.toModel(UserModel.class, request);
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		model.setListResult(userService.findAll(pageble));
		model.setTotalItem(userService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rq = request.getRequestDispatcher("views/admin/user/list.jsp");
		rq.forward(request, resp);
	}
}
