package dao;

import java.util.List;

import model.BrandModel;
import paging.Pageble;

public interface IBrandDao {
	List<BrandModel> findAll();
	List<BrandModel> findAll(Pageble pageble);
	int getTotalItem();
	BrandModel getOne(Long id);
	Long insertBrand(BrandModel brandModel);
	void updateBrand(BrandModel brandModel);
	void deleteBrand(Long id);
}
