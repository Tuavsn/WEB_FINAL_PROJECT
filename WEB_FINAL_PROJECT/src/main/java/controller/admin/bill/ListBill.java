package controller.admin.bill;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BillModel;
import paging.PageRequest;
import paging.Pageble;
import service.BillService;
import serviceImpl.BillServiceImpl;
import utils.FormUtil;
@WebServlet(urlPatterns = { "/admin-bill-list" })

public class ListBill extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3724103460905091867L;
	BillService billService = new BillServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		BillModel model = FormUtil.toModel(BillModel.class, req);
		
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		model.setListResult(billService.findAll(pageble));
		model.setTotalItem(billService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem()/ model.getMaxPageItem()));
		req.setAttribute("model", model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/bill/listbill.jsp");
		rq.forward(req, resp);
		
	}

}
