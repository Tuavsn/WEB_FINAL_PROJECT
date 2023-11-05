package controller.admin.api;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.BillModel;
import model.PromotionModel;
import service.BillService;
import serviceImpl.BillServiceImpl;
import utils.HttpUtil;
@WebServlet(urlPatterns = {"/api-bill"})

public class BillAPI extends HttpServlet{

	private static final long serialVersionUID = 434154585073292730L;
	BillService billService = new BillServiceImpl();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BillModel billModel = HttpUtil.of(request.getReader()).toModel(BillModel.class);
		billModel = billService.HuyThanhToanBill(billModel.getBillID());
		mapper.writeValue(response.getOutputStream(), billModel);
	}
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BillModel billModel = HttpUtil.of(request.getReader()).toModel(BillModel.class);
		billModel = billService.ThanhToanBill(billModel.getBillID());
		mapper.writeValue(response.getOutputStream(), billModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8"); // định form tiếng việt
		response.setContentType("application/json");
		BillModel billModel = HttpUtil.of(request.getReader()).toModel(BillModel.class);
		billService.HuyDonHang(billModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
}
