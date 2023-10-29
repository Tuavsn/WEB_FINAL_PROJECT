package service;

import java.util.List;

import model.BrandModel;
import paging.Pageble;

public interface IBrandService {
	List<BrandModel> findAll();
	List<BrandModel> findAll(Pageble pageble);
	int getTotalItem();
	BrandModel getOne(Long id);
	BrandModel insertBrand(BrandModel brandModel);
	BrandModel updateBrand(BrandModel brandModel);
	void deleteBrand(long[] ids);
}
