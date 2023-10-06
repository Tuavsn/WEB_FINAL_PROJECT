package daoImpl;

import java.util.List;



import dao.IUserDao;
import mapper.UserMapper;
import model.UserModel;
import paging.Pageble;



public class UserDAO extends AbstractDAO<UserModel> implements IUserDao{

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password) {
	
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
		sql.append(" WHERE username = ? AND password = ? ");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long insertUser(UserModel userModel) {
		if(userModel.getRoleId() == null) {
			String sql = "INSERT INTO user (username, password, fullname,status,roleid,sdt) VALUES(?,?,?,1,2,?) ";
			return insert(sql, userModel.getUserName(),userModel.getPassword(),userModel.getFullName(),userModel.getSdt());
		}
		else 
		{
			String sql = "INSERT INTO user (username, password, fullname,status,roleid,sdt) VALUES(?,?,?,1,?,?) ";
			return insert(sql, userModel.getUserName(),userModel.getPassword(),userModel.getFullName(),userModel.getRoleId(),userModel.getSdt());
		}
	}

	@Override
	public UserModel findOne(Long id) {
		String sql = "select * from user where id = ? ";
		List<UserModel> users = query(sql, new UserMapper(), id);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public List<UserModel> findAll() {
		String sql = "select * from user ";
		return query(sql, new UserMapper());
	}

	@Override
	public void chagePassword(UserModel userModel) {
		String sql = "UPDATE user SET password = ? where id = ?";
		update(sql, userModel.getPassword(),userModel.getId());
		
	}

	@Override
	public List<UserModel> findAll(Pageble pageble) {
		//String sql = "SELECT * FROM news LIMIT ?,?";
		StringBuilder sql = new StringBuilder("SELECT * FROM user inner join role on user.roleid = role.id ORDER BY status DESC");
		if(pageble.getOffset() !=null && pageble.getLimit() !=null) {
			sql.append(" LIMIT "+pageble.getOffset()+","+pageble.getLimit()+"");
		}
		return query(sql.toString(), new UserMapper());
	}

	@Override
	public int getTotalItem() {
		String sql = "SELECT count(*) from user";
		return count(sql);
	}

	@Override
	public void deleteUser(Long id) {
		String sql = "UPDATE user SET status = 0 where id = ?";
		update(sql,id);
		
	}

}
