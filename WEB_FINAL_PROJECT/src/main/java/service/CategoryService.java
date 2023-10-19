package service;

import java.util.List;

import model.CategoryModel;
import paging.Pageble;

public interface CategoryService {
	List<CategoryModel> findAll();
	List<CategoryModel> findAllPaging(Pageble pageble);
	int getTotalItem();
	CategoryModel getOne();
}
