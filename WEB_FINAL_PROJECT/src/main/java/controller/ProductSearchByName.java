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
import paging.PageRequest;
import paging.Pageble;
import service.CategoryService;
import service.IUserService;
import service.ProductService;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.ProductServiceImpl;
import serviceImpl.UserService;
import utils.FormUtil;

@WebServlet(urlPatterns = {"/search", "/tim-kiem"})
public class ProductSearchByName extends HttpServlet{
	CategoryService categoryservice = new CategoryServiceImpl();
	ProductService productservice = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");

		//Get All Category
		List<CategoryModel> allCategory = categoryservice.findAll();
		req.setAttribute("allcategory", allCategory);
		//Get Products by name
		ProductModel model = FormUtil.toModel(ProductModel.class, req);
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		if(model.getKey() == null && model.getSearch()==null) {
			model.setListResult(productservice.findAll(pageble));
			model.setTotalItem(productservice.getTotalItem());
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		}
		else 
		{
			model.setListResult(productservice.findAllSearch(pageble, model.getKey(), model.getSearch()));
			model.setTotalItem(productservice.getTotalItemSearch(model.getKey(), model.getSearch()));
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		}
		req.setAttribute("model", model);
		
		RequestDispatcher rq = req.getRequestDispatcher("views/shop.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
