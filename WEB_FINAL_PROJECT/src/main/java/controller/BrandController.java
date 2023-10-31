package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BrandModel;
import model.CategoryModel;
import paging.PageRequest;
import paging.Pageble;
import service.CategoryService;
import service.IBrandService;
import serviceImpl.BrandService;
import serviceImpl.CategoryServiceImpl;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/brand" })
public class BrandController extends HttpServlet{
	IBrandService brandService = new BrandService();
	CategoryService categoryservice = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// Get all category for navbar
		
		List<CategoryModel> allCategory = categoryservice.findAll();
		req.setAttribute("allcategory", allCategory);
		
		// Current page
		req.setAttribute("page", "brand");
		
		BrandModel model = FormUtil.toModel(BrandModel.class, req);
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		List<BrandModel> allBrand =  brandService.findAll(pageble);
		model.setTotalItem(brandService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		req.setAttribute("allbrand", allBrand);
		
		RequestDispatcher rq = req.getRequestDispatcher("views/brand.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
