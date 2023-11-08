package serviceImpl;

import java.util.List;

import dao.IPromotionDao;
import daoImpl.PromotionDao;
import model.PromotionModel;
import paging.Pageble;
import service.IPromotionService;

public class PromotionService implements IPromotionService{

	IPromotionDao promotionDao = new PromotionDao();
	@Override
	public List<PromotionModel> findAll() {
		// TODO Auto-generated method stub
		return promotionDao.findAll();
	}
	@Override
	public List<PromotionModel> findAll(Pageble pageble) {
		// TODO Auto-generated method stub
		return promotionDao.findAll(pageble);
	}
	@Override
	public int getTotalItem() {
		// TODO Auto-generated method stub
		return promotionDao.getTotalItem();
	}
	@Override
	public PromotionModel getOne(Long id) {
		// TODO Auto-generated method stub
		return promotionDao.getOne(id);
	}
	@Override
	public PromotionModel insertPromotion(PromotionModel promotionModel) {
		Long id = promotionDao.insertPromotion(promotionModel);
		return promotionDao.getOne(id);
	}
	@Override
	public PromotionModel updatePromotion(PromotionModel promotionModel) {
		promotionDao.updatePromotion(promotionModel);
		return getOne(promotionModel.getPromotionID());
	}
	@Override
	public void deletePromotion(long[] ids) {
		for(long id : ids) {
			promotionDao.deletePromotion(id);
		}
		
	}
	@Override
	public List<PromotionModel> findAllSearch(Pageble pageble, String key, String Search) {
		// TODO Auto-generated method stub
		return promotionDao.findAllSearch(pageble, key, Search);
	}
	@Override
	public int getTotalItemSearch(String key, String Search) {
		// TODO Auto-generated method stub
		return promotionDao.getTotalItemSearch(key, Search);
	}

}
