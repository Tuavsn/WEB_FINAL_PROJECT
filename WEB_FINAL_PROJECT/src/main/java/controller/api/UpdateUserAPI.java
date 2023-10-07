package controller.api;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.UserModel;
import service.IUserService;
import serviceImpl.UserService;
import utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-updateuser"})

public class UpdateUserAPI extends HttpServlet {
	IUserService userService = new UserService();
	private static final long serialVersionUID = 8705980353891812140L;
	
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		UserModel userModel = HttpUtil.of(request.getReader()).toModel(UserModel.class);
		userModel = userService.updateUser(userModel);
		mapper.writeValue(response.getOutputStream(), userModel);
		
	}
	
}
