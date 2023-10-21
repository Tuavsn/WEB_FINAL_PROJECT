package controller.admin.api;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.CategoryModel;
import service.CategoryService;
import serviceImpl.CategoryServiceImpl;
import utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-category"})

public class CategoryAPI extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1983174333334291007L;
	CategoryService categoryService = new CategoryServiceImpl();
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		CategoryModel categoryModel = HttpUtil.of(request.getReader()).toModel(CategoryModel.class);
		categoryModel = categoryService.insertCategory(categoryModel);
		mapper.writeValue(response.getOutputStream(), categoryModel);
	}
}
