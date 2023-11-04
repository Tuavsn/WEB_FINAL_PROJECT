package serviceImpl;

import java.util.List;

import dao.BillDao;
import daoImpl.BillDaoImpl;
import model.BillModel;
import paging.Pageble;
import service.BillService;

public class BillServiceImpl implements BillService{
	BillDao bill = new BillDaoImpl();
	@Override
	public List<BillModel> findAll() {
		return bill.findAll();
	}

	@Override
	public List<BillModel> findAll(Pageble pageble) {
		return bill.findAll(pageble);
	}

	@Override
	public List<BillModel> findAllSearch(Pageble pageble, String key, String search) {
		return bill.findAllSearch(pageble, key, search);
	}

	@Override
	public int getTotalItem() {
		return bill.getTotalItem();
	}

	@Override
	public int getTotalItemSearch(String key, String search) {
		return bill.getTotalItemSearch(key, search);
	}

	@Override
	public Long insertBill(BillModel bill) {
		Long id = this.bill.insertBill(bill);
		return id;
	}

	@Override
	public void updateBill(BillModel bill) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBill(Long id) {
		// TODO Auto-generated method stub
		
	}

}
