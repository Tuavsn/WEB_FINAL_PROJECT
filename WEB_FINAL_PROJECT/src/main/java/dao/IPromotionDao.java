package dao;

import java.util.List;

import model.PromotionModel;
import paging.Pageble;

public interface IPromotionDao {
	List<PromotionModel> findAll();
	List<PromotionModel> findAll(Pageble pageble);
	int getTotalItem();
	PromotionModel getOne(Long id);
	
	Long insertPromotion(PromotionModel promotionModel);
	void updatePromotion(PromotionModel promotionModel);
	void deletePromotion(long id);
}
