package service;

import java.util.List;

import model.PromotionModel;
import paging.Pageble;

public interface IPromotionService {
	List<PromotionModel> findAll();
	List<PromotionModel> findAll(Pageble pageble);
	int getTotalItem();
	PromotionModel getOne(Long id);
}
