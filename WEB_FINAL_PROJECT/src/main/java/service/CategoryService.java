package service;

import java.util.List;

import model.CategoryModel;

public interface CategoryService {
	List<CategoryModel> findAll();

	CategoryModel getOne();
}
