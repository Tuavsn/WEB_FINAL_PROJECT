package model;

public class ProductModel {
	private long ProductID;
	private String ProductName;
	private String Description;
	private double Price;
	private String ImageLink;
	private long CategoryID;
	private int Amount;

	public long getProductID() {
		return ProductID;
	}

	public void setProductID(long productID) {
		ProductID = productID;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		Price = price;
	}

	public String getImageLink() {
		return ImageLink;
	}

	public void setImageLink(String imageLink) {
		ImageLink = imageLink;
	}

	public long getCategoryID() {
		return CategoryID;
	}

	public void setCategoryID(long categoryID) {
		CategoryID = categoryID;
	}

	public int getAmount() {
		return Amount;
	}

	public void setAmount(int amount) {
		Amount = amount;
	}

	public ProductModel(long productID, String productName, String description, double price, String imageLink,
			long categoryID, int amount) {
		super();
		ProductID = productID;
		ProductName = productName;
		Description = description;
		Price = price;
		ImageLink = imageLink;
		CategoryID = categoryID;
		Amount = amount;
	}

	public ProductModel() {
		super();
	}

}
