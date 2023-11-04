package dao;

import java.util.List;

import model.BillModel;
import paging.Pageble;

public interface BillDao {
	List<BillModel> findAll();
	List<BillModel> findAll(Pageble pageble);
	List<BillModel> findAllSearch(Pageble pageble, String key, String search);
	int getTotalItem();
	int getTotalItemSearch(String key, String search);
	
	Long insertBill(BillModel bill);
	void updateBill(BillModel bill);
	void deleteBill(Long id);
}
