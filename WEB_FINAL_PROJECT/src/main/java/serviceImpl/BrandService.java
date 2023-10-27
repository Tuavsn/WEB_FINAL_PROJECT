package serviceImpl;

import java.util.List;

import dao.IBrandDao;
import daoImpl.BrandDao;
import model.BrandModel;
import service.IBrandService;

public class BrandService implements IBrandService 
{
	IBrandDao brandDao = new BrandDao();
	
	@Override
	public List<BrandModel> findAll() {
		return brandDao.findAll();
	}

}
