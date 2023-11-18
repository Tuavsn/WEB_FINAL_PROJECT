package controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BillService;
import service.CategoryService;
import service.IBrandService;
import service.IPromotionService;
import service.IUserService;
import service.ProductService;
import serviceImpl.BillServiceImpl;
import serviceImpl.BrandService;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.ProductServiceImpl;
import serviceImpl.PromotionService;
import serviceImpl.UserService;
@WebServlet(urlPatterns = { "/admin-home" })

public class AdminHome extends HttpServlet{
	
	
	private static final long serialVersionUID = -505397255147170921L;
	BillService billService = new BillServiceImpl();
	ProductService productService = new ProductServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	IPromotionService iPromotionService = new PromotionService();
	IBrandService brandService = new BrandService();
	IUserService iUserService = new UserService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		List<Integer> years = new ArrayList<Integer>();
		years.add(2022);
		years.add(2023);
		years.add(2024);
		String selectYear = req.getParameter("selectYear");
		req.setAttribute("selectYear", selectYear);
		req.setAttribute("years", years);
		if(selectYear==null) {
			req.setAttribute("revenueYear", billService.revenueYear("2023"));
		}
		else {
			req.setAttribute("revenueYear", billService.revenueYear(selectYear));
		}
		req.setAttribute("TotalPrice", billService.GetTotalPrice());
		req.setAttribute("TotalProduct", productService.getTotalItem());
		req.setAttribute("TotalCategory", categoryService.getTotalItem());
		req.setAttribute("TotalBrand", brandService.getTotalItem());
		req.setAttribute("TotalUser", iUserService.getTotalUser());
		req.setAttribute("BillToday", billService.billToday());
		req.setAttribute("TotalBill", billService.getTotalItem());
		req.setAttribute("TotalItemChuaThanhToan", billService.getTotalItemChuaThanhToan());
		req.setAttribute("TotalItemDaThanhToan", billService.getTotalItemDaThanhToan());
		req.setAttribute("TotalItemDaBiHuy", billService.getTotalItemDaBiHuy());
		req.setAttribute("TotalProductSell", productService.getTotalProductSell());
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/home.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
