package model;

public class CartModel {
	private long CartID;
	private long SellerID;
	private long ProductID;
	private int Amount;

	public long getCartID() {
		return CartID;
	}

	public void setCartID(long cartID) {
		CartID = cartID;
	}

	public long getSellerID() {
		return SellerID;
	}

	public void setSellerID(long sellerID) {
		SellerID = sellerID;
	}

	public long getProductID() {
		return ProductID;
	}

	public void setProductID(long productID) {
		ProductID = productID;
	}

	public int getAmount() {
		return Amount;
	}

	public void setAmount(int amount) {
		Amount = amount;
	}

	public CartModel(long cartID, long sellerID, long productID, int amount) {
		super();
		CartID = cartID;
		SellerID = sellerID;
		ProductID = productID;
		Amount = amount;
	}

	public CartModel() {
		super();
	}

}
