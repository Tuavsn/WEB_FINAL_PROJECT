package serviceImpl;

import java.util.List;

import dao.CategoryDao;
import daoImpl.CategoryDaoImpl;
import model.CategoryModel;
import paging.Pageble;
import service.CategoryService;

public class CategoryServiceImpl implements CategoryService {
	CategoryDao categorydao = new CategoryDaoImpl();

	@Override
	public List<CategoryModel> findAll() {
		return categorydao.findAll();
	}

	

	@Override
	public List<CategoryModel> findAllPaging(Pageble pageble) {
		return categorydao.findAllPaging(pageble);
	}

	@Override
	public int getTotalItem() {
		return categorydao.getTotalItem();
	}



	@Override
	public CategoryModel getOne(Long categoryID) {
		return categorydao.getOne(categoryID);
	}



	@Override
	public CategoryModel insertCategory(CategoryModel categoryModel) {
		Long categoryID = categorydao.insertCategory(categoryModel);
		return categorydao.getOne(categoryID);
	}




}
