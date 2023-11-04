package model;

public class OrderItemModel extends AbstractModel<OrderItemModel> {
	private long OrderItemID;
	private ProductModel product;
	private int Amount;
	private double TotalPrice;
	private long BillID;

	public long getOrderItemID() {
		return OrderItemID;
	}

	public void setOrderItemID(long orderItemID) {
		OrderItemID = orderItemID;
	}

	public ProductModel getProduct() {
		return product;
	}

	public void setProduct(ProductModel product) {
		this.product = product;
	}

	public int getAmount() {
		return Amount;
	}

	public void setAmount(int amount) {
		Amount = amount;
	}

	public double getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}

	public long getBillID() {
		return BillID;
	}

	public void setBillID(long orderID) {
		BillID = orderID;
	}

	public OrderItemModel(long orderItemID, ProductModel product, int amount, double totalPrice, long orderID) {
		super();
		OrderItemID = orderItemID;
		this.product = product;
		Amount = amount;
		TotalPrice = totalPrice;
		BillID = orderID;
	}

	public OrderItemModel() {
		super();
	}

}
