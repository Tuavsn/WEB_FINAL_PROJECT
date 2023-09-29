package model;

public class CartModel {
	private int id;
	private int ProductID;
	private int Amount;

	public int getUserID() {
		return id;
	}

	public void setUserID(int userID) {
		id = userID;
	}

	public int getProductID() {
		return ProductID;
	}

	public void setProductID(int productID) {
		ProductID = productID;
	}

	public int getAmount() {
		return Amount;
	}

	public void setAmount(int amount) {
		Amount = amount;
	}

	public CartModel() {
		super();
	}

	public CartModel(int userID, int productID, int amount) {
		super();
		id = userID;
		ProductID = productID;
		Amount = amount;
	}

}
