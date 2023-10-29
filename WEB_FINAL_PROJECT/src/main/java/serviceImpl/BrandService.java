package serviceImpl;

import java.util.List;

import dao.IBrandDao;
import daoImpl.BrandDao;
import model.BrandModel;
import paging.Pageble;
import service.IBrandService;

public class BrandService implements IBrandService 
{
	IBrandDao brandDao = new BrandDao();
	
	@Override
	public List<BrandModel> findAll() {
		return brandDao.findAll();
	}

	@Override
	public List<BrandModel> findAll(Pageble pageble) {
		// TODO Auto-generated method stub
		return brandDao.findAll(pageble);
	}

	@Override
	public int getTotalItem() {
		// TODO Auto-generated method stub
		return brandDao.getTotalItem();
	}

	@Override
	public BrandModel getOne(Long id) 
	{
		return brandDao.getOne(id);
	}

	@Override
	public BrandModel insertBrand(BrandModel brandModel) {
		Long id = brandDao.insertBrand(brandModel);
		return brandDao.getOne(id);
	}

	@Override
	public BrandModel updateBrand(BrandModel brandModel) {
		brandDao.updateBrand(brandModel);
		return brandDao.getOne(brandModel.getBrandID());
	}

	@Override
	public void deleteBrand(long[] ids) {
		for(Long id : ids) {
			brandDao.deleteBrand(id);
		}
		
	}

}
