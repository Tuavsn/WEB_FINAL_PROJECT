package controller.admin.api;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.BrandModel;
import model.PromotionModel;
import model.UserModel;
import service.IPromotionService;
import serviceImpl.PromotionService;
import utils.HttpUtil;
@WebServlet(urlPatterns = {"/api-promotion"})

public class PromotionAPI extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3904932699668260047L;
	IPromotionService promotionService = new PromotionService();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		PromotionModel promotionModel = HttpUtil.of(request.getReader()).toModel(PromotionModel.class);
		promotionModel = promotionService.insertPromotion(promotionModel);
		mapper.writeValue(response.getOutputStream(), promotionModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		PromotionModel promotionModel = HttpUtil.of(request.getReader()).toModel(PromotionModel.class);
		promotionModel = promotionService.updatePromotion(promotionModel);
		mapper.writeValue(response.getOutputStream(), promotionModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8"); // định form tiếng việt
		response.setContentType("application/json");
		PromotionModel promotionModel = HttpUtil.of(request.getReader()).toModel(PromotionModel.class);
		promotionService.deletePromotion(promotionModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}

}
