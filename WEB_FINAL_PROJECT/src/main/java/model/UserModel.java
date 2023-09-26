package model;

public class UserModel {
	private int UserID;
	private String UserName;
	private String UserPassword;
	private boolean IsAdmin;
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	public boolean isIsAdmin() {
		return IsAdmin;
	}
	public void setIsAdmin(boolean isAdmin) {
		IsAdmin = isAdmin;
	}
	public UserModel() {
		super();
	}
	public UserModel(int userID, String userName, String userPassword, boolean isAdmin) {
		super();
		UserID = userID;
		UserName = userName;
		UserPassword = userPassword;
		IsAdmin = isAdmin;
	}
}
