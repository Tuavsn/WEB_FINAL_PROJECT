package controller.admin.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;
import service.CategoryService;
import serviceImpl.CategoryServiceImpl;
import utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-product-edit" })

public class Editproduct extends HttpServlet{

	CategoryService categoryService = new CategoryServiceImpl();
	private static final long serialVersionUID = -3607301560301769691L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		ProductModel model = FormUtil.toModel(ProductModel.class, req);
		req.setAttribute("Allcategory", categoryService.findAll());
		req.setAttribute("model",model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/product/editproduct.jsp");
		rq.forward(req, resp);
	}

}
