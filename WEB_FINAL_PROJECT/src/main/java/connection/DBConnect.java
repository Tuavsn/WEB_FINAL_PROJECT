package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private final String DB_URL = "jdbc:mysql://localhost:3306/";
	private final String SCHEMA = "webfinalproject";
	private final String USER = "root";
	private final String PASSWORD = "1234567890";
	//getConnection method
	public Connection getConnection() throws Exception {
		String url = DB_URL + SCHEMA;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.getConnection(url, USER, PASSWORD);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return DriverManager.getConnection(url, USER, PASSWORD);
	}
}
