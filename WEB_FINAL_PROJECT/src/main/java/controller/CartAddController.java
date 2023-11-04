package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.Map;

import model.OrderItemModel;
import model.ProductModel;
import service.ProductService;
import serviceImpl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/cart/add" })
public class CartAddController extends HttpServlet{
	ProductService productService = new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long PID = Long.parseLong(req.getParameter("pid"));
		int Amount = Integer.parseInt(req.getParameter("amount"));
		ProductModel product = productService.getOne(PID);
		OrderItemModel orderItem = new OrderItemModel();
		orderItem.setProduct(product);
		orderItem.setAmount(Amount);
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		if (obj == null && Amount > 0) {
			Map<Long, OrderItemModel> map = new HashMap<Long, OrderItemModel>();
			map.put(PID, orderItem);
			httpSession.setAttribute("cart", map);
		} else {
			Map<Long, OrderItemModel> map = (Map<Long, OrderItemModel>) obj;

			OrderItemModel existedCartItem = map.get(Long.valueOf(PID.toString()));

			if (existedCartItem == null && Amount > 0) {
				map.put(PID, orderItem);
			} else {
				existedCartItem.setAmount(existedCartItem.getAmount() + Amount);
				map.put(PID, existedCartItem);
				if(existedCartItem.getAmount() <= 0) map.remove(PID);
			}

			httpSession.setAttribute("cart", map);
		}
		
		String referer = req.getHeader("referer");
		if (referer != null) {
	        resp.sendRedirect(referer);
	    } else {
	    	resp.sendRedirect(req.getContextPath() + "/cart");
	    }
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
