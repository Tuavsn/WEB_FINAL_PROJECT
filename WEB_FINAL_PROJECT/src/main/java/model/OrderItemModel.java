package model;

public class OrderItemModel extends AbstractModel<OrderItemModel> {
	private long CartID;
	private ProductModel product;
	private int Amount;
	private double TotalPrice;
	private long OrderID;

	public long getCartID() {
		return CartID;
	}

	public void setCartID(long cartID) {
		CartID = cartID;
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

	public long getOrderID() {
		return OrderID;
	}

	public void setOrderID(long orderID) {
		OrderID = orderID;
	}

	public OrderItemModel(long cartID, ProductModel product, int amount, double totalPrice, long orderID) {
		super();
		CartID = cartID;
		this.product = product;
		Amount = amount;
		TotalPrice = totalPrice;
		OrderID = orderID;
	}

	public OrderItemModel() {
		super();
	}

}
