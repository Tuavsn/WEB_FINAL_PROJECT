package daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import dao.GenericDAO;
import mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T> {
	public DB
	public Connection getConnection() // Load mysql
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/newservlet2023";
			String user = "root";
			String password = "huy852347";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}

	@Override
	public <T> List<T> query(String sql, RowMapper<T> RowMapper, Object... parameters) {
		List<T> results = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			// set parameter()
			setParameter(statement, parameters);
			resultSet = statement.executeQuery(); // thực thi câu sql
			while (resultSet.next()) {
				results.add(RowMapper.mapRow(resultSet));
			}
			return results;
		} catch (SQLException e) {
			return null;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
	}

	private void setParameter(PreparedStatement statement, Object... parameters) {
		try {
			for (int i = 0; i < parameters.length; i++) {
				Object parameter = parameters[i];
				int index = i + 1;
				if (parameter instanceof Long) {
					statement.setLong(index, (Long) parameter);
				} else if (parameter instanceof String) {
					statement.setString(index, (String) parameter);
				} else if (parameter instanceof Integer) {
					statement.setInt(index, (Integer) parameter);
				} else if (parameter instanceof Timestamp) {
					statement.setTimestamp(index, (Timestamp) parameter);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(String sql, Object... patameters) { // sửa và xóa
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql);
			setParameter(statement, patameters);
			statement.executeUpdate();// thực hiện thao tác trên dữ liệu(thêm,xóa,sửa)
			connection.commit();
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback(); // thất bại thì rollback
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
	}

	@Override
	public Long insert(String sql, Object... patameters) { // thêm
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		Long id = null;
		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, statement.RETURN_GENERATED_KEYS);
			setParameter(statement, patameters);
			statement.executeUpdate();// thực hiện thao tác trên dữ liệu(thêm,xóa,sửa)
			resultSet = statement.getGeneratedKeys();
			if (resultSet.next()) {
				id = resultSet.getLong(1); // lấy ra khóa mới nhất vừa được thêm
			}
			connection.commit();
			return id;
		} catch (SQLException e) {
			if (connection != null) {
				try {
					connection.rollback(); // thất bại thì rollback
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public int count(String sql, Object... patameters) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			int count = 0;
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			// set parameter()
			setParameter(statement, patameters);
			resultSet = statement.executeQuery(); // thực thi câu sql
			while (resultSet.next()) {
				count = resultSet.getInt(1); // 1 là vi tri dau tien
			}
			return count;
		} catch (SQLException e) {
			return 0;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return 0;
			}
		}
	}
}
