package dao;

import java.util.List;

import model.BrandModel;

public interface IBrandDao {
	List<BrandModel> findAll();
}
