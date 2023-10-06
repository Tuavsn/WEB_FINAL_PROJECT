package controller;

import java.io.IOException;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategoryModel;
import model.UserModel;
import service.CategoryService;
import service.IUserService;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.UserService;
import utils.FormUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/dang-nhap","/thoat"})
public class LoginController extends HttpServlet {
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	private static final long serialVersionUID = -1591444818940832891L;
	private IUserService userService = new UserService();
	CategoryService categoryservice = new CategoryServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		if(action != null && action.equals("login")) 
		{
			List<CategoryModel> allCategory = categoryservice.findAll();
			request.setAttribute("allcategory", allCategory);
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if(message != null && alert != null) //bat buoc phai co
			{
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		}
		else if(action != null && action.equals("loguot"))	//the a khi click vao tu dong vao mothod get
		{
			
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath()+"/home");
		}
		else 
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("/views/home.jsp");
			rd.forward(request, response);	
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("login")) 
		{
			UserModel model = FormUtil.toModel(UserModel.class, request); //da get duoc userName va passWord
			String user = model.getUserName();
			String passWord = model.getPassword();
			model = userService.findByUserNameAndPasswordAndStatus(model.getUserName(), model.getPassword());
			if(model != null && model.getStatus()==1) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model); //da luu data
				if(model.getRole().getCode().equals("USER")) 
				{
					response.sendRedirect(request.getContextPath()+"/home");
				}
				else if(model.getRole().getCode().equals("ADMIN")) {
					response.sendRedirect(request.getContextPath()+"/admin-home");
				}
			}
			else 
			{
				if(user=="" || passWord == "")
				{
					response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=empty&alert=danger");

				}
				else if(model!=null && model.getStatus()==0) {
					response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=statusnot&alert=danger");
				}
				else 
				{
					response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=username_password_invalid&alert=danger");

				}

			}
		}
	}

}
