package controller.admin.brand;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IBrandDao;
import daoImpl.BrandDao;
import model.BrandModel;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-brand-edit" })

public class EditBrand extends HttpServlet{

	/**
	 * 
	 */
	IBrandDao brandDao = new BrandDao();
	private static final long serialVersionUID = 6947295020612285364L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		BrandModel model = FormUtil.toModel(BrandModel.class, req);
		if(model.getBrandID() != null) 
		{
			model = brandDao.getOne(model.getBrandID());
		}
		req.setAttribute("model",model);
		RequestDispatcher rq = req.getRequestDispatcher("views/admin/brand/editbrand.jsp");
		rq.forward(req, resp);
	}

}
