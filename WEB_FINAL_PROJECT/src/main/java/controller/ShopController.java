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
import model.ProductModel;
import service.CategoryService;
import service.ProductService;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/shop" })
public class ShopController extends HttpServlet {
	CategoryService categoryservice = new CategoryServiceImpl();
	ProductService productservice = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// Get all category for navbar
		List<CategoryModel> allCategory = categoryservice.findAll();
		req.setAttribute("allcategory", allCategory);
		// Get all product
		String cid = req.getParameter("cid");
		List<ProductModel> allProduct;
		if(cid == null) {
			allProduct = productservice.findAll();	
		} else {
			allProduct = productservice.getProductByCID(cid);
		}
		req.setAttribute("allproduct", allProduct);
		req.setAttribute("cid", cid);
		RequestDispatcher rq = req.getRequestDispatcher("views/shop.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
