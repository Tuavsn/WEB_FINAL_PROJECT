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

import model.CartModel;
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
		CartModel cart = new CartModel();
		cart.setProductID(PID);
		cart.setAmount(Amount);
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		if (obj == null) {
			Map<Long, CartModel> map = new HashMap<Long, CartModel>();
			map.put(cart.getProductID(), cart);
			httpSession.setAttribute("cart", map);
		} else {
			Map<Long, CartModel> map = (Map<Long, CartModel>) obj;

			CartModel existedCartItem = map.get(Long.valueOf(PID.toString()));

			if (existedCartItem == null) {
				map.put(cart.getProductID(), cart);
			} else {
				existedCartItem.setAmount(cart.getAmount() + Amount);
			}

			httpSession.setAttribute("cart", map);
		}
		
		resp.sendRedirect(req.getContextPath() + "/cart");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
