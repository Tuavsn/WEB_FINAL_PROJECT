package controller.admin.promotion;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PromotionModel;
import paging.PageRequest;
import paging.Pageble;
import service.IPromotionService;
import serviceImpl.PromotionService;
import utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-promotion-list" })

public class ListPromotion extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5153597320330902494L;
	IPromotionService promotionService = new PromotionService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		PromotionModel model = FormUtil.toModel(PromotionModel.class, req);
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		model.setTotalItem(promotionService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		model.setListResult(promotionService.findAll(pageble));
		req.setAttribute("model", model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/promotion/listpromotion.jsp");
		rq.forward(req, resp);
	}

}
