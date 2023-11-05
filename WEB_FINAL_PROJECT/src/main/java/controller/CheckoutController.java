package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Map;

import model.BillModel;
import model.CategoryModel;
import model.OrderItemModel;
import model.UserModel;
import service.BillService;
import service.CategoryService;
import service.OrderItemService;
import serviceImpl.BillServiceImpl;
import serviceImpl.CategoryServiceImpl;
import serviceImpl.OrderItemServiceImpl;

@WebServlet(urlPatterns = { "/checkout" })
public class CheckoutController extends HttpServlet {
	CategoryService categoryservice = new CategoryServiceImpl();
	BillService billservice = new BillServiceImpl();
	OrderItemService orderitemservice = new OrderItemServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		List<CategoryModel> allCategory = categoryservice.findAll();
		req.setAttribute("allcategory", allCategory);

		RequestDispatcher rq = req.getRequestDispatcher("views/checkout.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		HttpSession httpSession = req.getSession();
		Object objCart = httpSession.getAttribute("cart");	
		OrderItemModel orderItem = new OrderItemModel();
		double totalprice = 0;
		//Lấy ra danh sách các sản phẩm của đơn hàng đồng thời tính giá trị tổng đơn hàng
		if (objCart != null) {
			// ep ve dung kieu cua no khi them vao o phan them vao gio hang controller
			Map<Long, OrderItemModel> map = (Map<Long, OrderItemModel>) objCart;
			for (OrderItemModel orderitem : map.values()) {
				totalprice += orderitem.getProduct().getPrice() * orderitem.getAmount();
			}
		}
		//Phí ship
		totalprice += 20000;
		UserModel objUser = (UserModel)httpSession.getAttribute("USERMODEL");	
		String shippingaddress = req.getParameter("shippingaddress");
		String note = req.getParameter("note");
		BillModel bill = new BillModel();
		bill.setUserID(objUser.getId());
		bill.setDate(new java.sql.Date(System.currentTimeMillis()).toString());
		bill.setTotalPrice(totalprice);
		bill.setShippingAddress(shippingaddress);
		bill.setNote(note);
		bill.setStatus(0);
		Long BillID = billservice.insertBill(bill);
		
		if (objCart != null) {
			// ep ve dung kieu cua no khi them vao o phan them vao gio hang controller
			Map<Long, OrderItemModel> map = (Map<Long, OrderItemModel>) objCart;
			for (OrderItemModel orderitem : map.values()) {
				orderitem.setBillID(BillID);
				orderitemservice.insertOrderItem(orderitem);
			}
		}
		
		httpSession.removeAttribute("cart");
		
		PrintWriter out = resp.getWriter();  
		resp.setContentType("text/html");  
		out.println("<script type=\"text/javascript\">");  
		out.println("alert('Đặt hàng thành công');");  
		out.print("location='"+req.getContextPath()+"/home'");
		out.println("</script>");
	
	}
}
