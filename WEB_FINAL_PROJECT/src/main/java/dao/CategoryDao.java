package dao;

import java.util.List;

import model.CategoryModel;

public interface CategoryDao {
	List<CategoryModel> findAll();
	CategoryModel getOne(String CategoryID);
}
