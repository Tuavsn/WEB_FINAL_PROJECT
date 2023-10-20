package dao;

import java.util.List;

import model.CategoryModel;
import paging.Pageble;

public interface CategoryDao {
	List<CategoryModel> findAll();
	List<CategoryModel> findAllPaging(Pageble pageble);
	int getTotalItem();
	CategoryModel getOne(Long CategoryID);
}
