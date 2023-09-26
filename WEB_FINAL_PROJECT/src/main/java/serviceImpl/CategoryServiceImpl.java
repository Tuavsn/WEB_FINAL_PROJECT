package serviceImpl;

import java.util.List;

import dao.CategoryDao;
import daoImpl.CategoryDaoImpl;
import model.CategoryModel;
import service.CategoryService;

public class CategoryServiceImpl implements CategoryService{
	CategoryDao categorydao = new CategoryDaoImpl();

	@Override
	public List<CategoryModel> findAll() {
		return categorydao.findAll();
	}

	@Override
	public CategoryModel getOne() {
		// TODO Auto-generated method stub
		return null;
	}

}
