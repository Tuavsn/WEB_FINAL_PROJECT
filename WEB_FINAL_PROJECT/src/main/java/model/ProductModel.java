package model;

import java.util.List;

public class ProductModel extends AbstractModel<ProductModel> {
	private Long ProductID;
	private String ProductName;
	private String Description;
	private double Price;
	List<ImageModel> image;
	private CategoryModel categoryModel = new CategoryModel();
	private long CategoryID;
	private int Amount;

	

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
		setProductID(productID);
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

	public CategoryModel getCategoryModel() {
		return categoryModel;
	}

	public void setCategoryModel(CategoryModel categoryModel) {
		this.categoryModel = categoryModel;
	}

	public Long getProductID() {
		return ProductID;
	}

	public void setProductID(Long productID) {
		ProductID = productID;
	}

}
