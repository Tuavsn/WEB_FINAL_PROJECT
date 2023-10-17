package model;

import java.util.List;

public class ProductModel extends AbstractModel<ProductModel> {
	private long ProductID;
	private String ProductName;
	private String Description;
	private double Price;
	List<ImageModel> image;
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

	public List<ImageModel> getImage() {
		return image;
	}

	public void setImage(List<ImageModel> image) {
		this.image = image;
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

	public ProductModel(long productID, String productName, String description, double price, List<ImageModel> image,
			long categoryID, int amount) {
		super();
		ProductID = productID;
		ProductName = productName;
		Description = description;
		Price = price;
		this.image = image;
		CategoryID = categoryID;
		Amount = amount;
	}

	public ProductModel() {
		super();
	}

}
