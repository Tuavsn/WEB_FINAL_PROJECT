package daoImpl;

import java.util.List;

import dao.CategoryDao;
import mapper.CategoryMapper;
import model.CategoryModel;

public class CategoryDaoImpl extends AbstractDAO<CategoryModel> implements CategoryDao {

	@Override
	public List<CategoryModel> findAll() {
		String query = "select * from category where ParentID=0";
		List<CategoryModel> category = query(query, new CategoryMapper());
		for(CategoryModel i : category) {
			String subquery = "select * from category where ParentID=?";
			i.setChildCategory(query(subquery, new CategoryMapper(), i.getCategoryID()));
		}
		return category;
	}

	@Override
	public CategoryModel getOne(String CategoryID) {
		// TODO Auto-generated method stub
		return null;
	}

}
