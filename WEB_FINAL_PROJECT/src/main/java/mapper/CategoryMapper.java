package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel>{

	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
		try {
			CategoryModel category = new CategoryModel();
			category.setCategoryID(resultSet.getInt("CategoryID"));
			category.setCategoryName(resultSet.getString("CategoryName"));
			category.setImageLink(resultSet.getString("ImageLink"));
			category.setIcon(resultSet.getString("Icon"));
			return category;
		}
		catch (SQLException e) {
			return null;
		}
	}

}
