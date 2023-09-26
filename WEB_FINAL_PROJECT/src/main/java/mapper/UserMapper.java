package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.UserModel;

public class UserMapper implements RowMapper<model.UserModel> {

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel users = new UserModel();
			users.setUserID(resultSet.getInt("UserID"));
			users.setUserName(resultSet.getString("UserName"));
			users.setUserPassword(resultSet.getString("UserPassword"));
			users.setIsAdmin(resultSet.getBoolean("IsAdmin"));
			return users;
		} catch (SQLException e) {
			return null;
		}
	}

}
