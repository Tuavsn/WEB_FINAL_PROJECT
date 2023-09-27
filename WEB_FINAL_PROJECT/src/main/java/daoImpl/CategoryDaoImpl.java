package daoImpl;

import java.util.List;

import dao.CategoryDao;
import mapper.CategoryMapper;
import model.CategoryModel;

public class CategoryDaoImpl extends AbstractDAO<CategoryModel> implements CategoryDao {

	@Override
	public List<CategoryModel> findAll() {
		String query = "select * from category";
		return query(query, new CategoryMapper());
	}

	@Override
	public CategoryModel getOne(String CategoryID) {
		// TODO Auto-generated method stub
		return null;
	}

}
