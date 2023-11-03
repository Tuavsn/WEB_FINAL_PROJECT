package daoImpl;

import java.util.List;

import dao.IPromotionDao;
import mapper.PromotionMapper;
import model.PromotionModel;
import paging.Pageble;

public class PromotionDao extends AbstractDAO<PromotionModel> implements IPromotionDao{
	@Override
	public List<PromotionModel> findAll() 
	{
		String sql = "SELECT promotion.*,ProductName FROM promotion inner join product on promotion.productID = product.productID";
		return query(sql, new PromotionMapper());
	}

	@Override
	public List<PromotionModel> findAll(Pageble pageble) {
		StringBuilder sql= new StringBuilder("SELECT promotion.*,ProductName FROM promotion inner join product on promotion.productID = product.productID");
		if(pageble.getOffset() !=null && pageble.getLimit() !=null) {
			sql.append(" LIMIT "+pageble.getOffset()+","+pageble.getLimit()+"");
		}
		return query(sql.toString(), new PromotionMapper());
	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT count(*) FROM promotion inner join product on promotion.productID = product.productID ;";
		return count(sql);
	}

	@Override
	public PromotionModel getOne(Long id) {
		String sql ="SELECT promotion.*,ProductName FROM promotion inner join product on promotion.productID = product.productID where PromotionID = ?";
		List<PromotionModel> promotionModels = query(sql, new PromotionMapper(), id);
		return promotionModels.isEmpty() ? null : promotionModels.get(0); 
		
	}

	@Override
	public Long insertPromotion(PromotionModel promotionModel) {
		String sql="INSERT INTO promotion (ProductID, StartDate, EndDate,SaleOff) VALUES(?,?,?,?)";
		return insert(sql, promotionModel.getProductID(),promotionModel.getStartDate(),promotionModel.getEndDate(),promotionModel.getSaleOff());
	}

}
