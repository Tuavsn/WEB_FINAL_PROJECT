package controller.admin.promotion;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PromotionModel;
import service.IPromotionService;
import service.ProductService;
import serviceImpl.ProductServiceImpl;
import serviceImpl.PromotionService;
import utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-promotion-edit" })

public class EditPromotion extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2747508899078678573L;
	IPromotionService promotionService = new PromotionService();
	ProductService productService = new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PromotionModel model = FormUtil.toModel(PromotionModel.class, req);
		if(model.getPromotionID()!=null) {
			model = promotionService.getOne(model.getPromotionID());
		}
		model.setTotalItem(promotionService.getTotalItem());
		req.setAttribute("allPromotion", promotionService.findAll());
		req.setAttribute("allProduct",productService.findAll());
		req.setAttribute("model",model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/promotion/editpromotion.jsp");
		rq.forward(req, resp);
	}
}
