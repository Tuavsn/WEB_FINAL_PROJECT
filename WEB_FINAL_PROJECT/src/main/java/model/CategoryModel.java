package model;

public class CategoryModel {
	private int CategoryID;
	private String CategoryName;
	private String Icon;
	public int getCategoryID() {
		return CategoryID;
	}
	public void setCategoryID(int categoryID) {
		CategoryID = categoryID;
	}
	public String getCategoryName() {
		return CategoryName;
	}
	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}
	public String getIcon() {
		return Icon;
	}
	public void setIcon(String icon) {
		Icon = icon;
	}
	public CategoryModel() {
		super();
	}
	public CategoryModel(int categoryID, String categoryName, String icon) {
		super();
		CategoryID = categoryID;
		CategoryName = categoryName;
		Icon = icon;
	}
}
