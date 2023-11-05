package controller.admin.bill;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BillModel;
import model.BrandModel;
import service.BillService;
import serviceImpl.BillServiceImpl;
import utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-bill-detail" })

public class DetailBill extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4081746924594205731L;
	BillService billService = new BillServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		BillModel model = FormUtil.toModel(BillModel.class, req);
		model = billService.getOne(model.getBillID());
		req.setAttribute("model", model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/bill/detailbill.jsp");
		rq.forward(req, resp);
	}

}
