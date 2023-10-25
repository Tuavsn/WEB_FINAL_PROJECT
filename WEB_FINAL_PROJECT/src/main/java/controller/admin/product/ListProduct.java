package controller.admin.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import constant.SystemConstant;
import model.CategoryModel;
import model.ProductModel;
import paging.PageRequest;
import paging.Pageble;
import service.ProductService;
import serviceImpl.ProductServiceImpl;
import utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-product-list" })

public class ListProduct extends HttpServlet {

	private static final long serialVersionUID = 5952279382785284219L;
	ProductService productService = new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		ProductModel model = FormUtil.toModel(ProductModel.class, req);
		req.setAttribute("Allproduct",productService.findAll());
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		List<ProductModel> allProduct = productService.findAll(pageble);
		model.setTotalItem(productService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		req.setAttribute("Allproduct", allProduct);
		req.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/product/listproduct.jsp");
		rq.forward(req, resp);
	}

}
