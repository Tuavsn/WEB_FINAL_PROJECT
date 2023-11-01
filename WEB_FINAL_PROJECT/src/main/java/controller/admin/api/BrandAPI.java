package controller.admin.api;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.BrandModel;
import model.CategoryModel;
import model.ProductModel;
import service.IBrandService;
import serviceImpl.BrandService;
import utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-brand"})

public class BrandAPI extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2950275029344252092L;
	IBrandService brandService = new BrandService();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BrandModel brandModel = HttpUtil.of(request.getReader()).toModel(BrandModel.class);
		brandModel = brandService.insertBrand(brandModel);
		mapper.writeValue(response.getOutputStream(), brandModel);
	}
	@Override
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BrandModel brandModel = HttpUtil.of(request.getReader()).toModel(BrandModel.class);
		brandModel = brandService.updateBrand(brandModel);
		mapper.writeValue(response.getOutputStream(), brandModel);
	}
	
	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8"); // định form tiếng việt
		response.setContentType("application/json");
		BrandModel brandModel = HttpUtil.of(request.getReader()).toModel(BrandModel.class);
		brandService.deleteBrand(brandModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
		
		
	}
}
