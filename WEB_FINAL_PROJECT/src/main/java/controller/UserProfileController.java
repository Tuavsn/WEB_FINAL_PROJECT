package controller;

import java.io.IOException;
import java.util.Collections;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

import model.BillModel;
import model.OrderItemModel;
import model.UserModel;
import paging.PageRequest;
import paging.Pageble;
import service.BillService;
import serviceImpl.BillServiceImpl;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/userprofile" })
public class UserProfileController extends HttpServlet {
	BillService billService = new BillServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");

		HttpSession httpSession = req.getSession();
		UserModel objUser = (UserModel) httpSession.getAttribute("USERMODEL");

		BillModel model = FormUtil.toModel(BillModel.class, req);
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem());
		model.setListResult(billService.findAllSearch(pageble, "id", objUser.getId().toString()));
		model.setTotalItem(billService.getTotalItemSearch("id", objUser.getId().toString()));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
		Collections.reverse(model.getListResult());
		req.setAttribute("model", model);

		RequestDispatcher rq = req.getRequestDispatcher("views/userprofile.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
