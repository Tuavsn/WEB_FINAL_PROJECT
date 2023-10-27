package daoImpl;

import java.util.List;

import dao.IBrandDao;
import mapper.BrandMapper;
import model.BrandModel;

public class BrandDao extends AbstractDAO<BrandModel> implements IBrandDao {

	@Override
	public List<BrandModel> findAll() 
	{
		String query="select * from brand";
		return query(query, new BrandMapper());
	}

}
