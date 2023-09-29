package daoImpl;

import java.util.List;



import dao.IUserDao;
import mapper.UserMapper;
import model.UserModel;



public class UserDAO extends AbstractDAO<UserModel> implements IUserDao{

	@Override
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
	
		StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
		sql.append(" WHERE username = ? AND password = ? AND status = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long insertUser(UserModel userModel) {
		String sql = "INSERT INTO user (username, password, fullname,status,roleid,sdt) VALUES(?,?,?,1,2,?) ";
		return insert(sql, userModel.getUserName(),userModel.getPassword(),userModel.getFullName(),userModel.getSdt());
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

}
