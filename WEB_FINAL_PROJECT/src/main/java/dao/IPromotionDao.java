package dao;

import java.util.List;

import model.PromotionModel;
import paging.Pageble;

public interface IPromotionDao {
	List<PromotionModel> findAll();
	List<PromotionModel> findAll(Pageble pageble);
	int getTotalItem();
	PromotionModel getOne(Long id);
}
