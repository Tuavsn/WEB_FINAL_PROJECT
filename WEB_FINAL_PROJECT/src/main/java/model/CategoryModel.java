package model;

import java.util.List;

public class CategoryModel {
	private long CategoryID;
	private String CategoryName;
	private String ImageLink;
	private String Icon;
	private List<CategoryModel> ChildCategory;

	public long getCategoryID() {
		return CategoryID;
	}

	public void setCategoryID(long categoryID) {
		CategoryID = categoryID;
	}

	public String getCategoryName() {
		return CategoryName;
	}

	public void setCategoryName(String categoryName) {
		CategoryName = categoryName;
	}

	public String getImageLink() {
		return ImageLink;
	}

	public void setImageLink(String imageLink) {
		ImageLink = imageLink;
	}

	public String getIcon() {
		return Icon;
	}

	public void setIcon(String icon) {
		Icon = icon;
	}

	public List<CategoryModel> getChildCategory() {
		return ChildCategory;
	}

	public void setChildCategory(List<CategoryModel> childCategory) {
		ChildCategory = childCategory;
	}

	public CategoryModel(long categoryID, String categoryName, String imageLink, String icon,
			List<CategoryModel> childCategory) {
		super();
		CategoryID = categoryID;
		CategoryName = categoryName;
		ImageLink = imageLink;
		Icon = icon;
		ChildCategory = childCategory;
	}

	public CategoryModel() {
		super();
	}

}
