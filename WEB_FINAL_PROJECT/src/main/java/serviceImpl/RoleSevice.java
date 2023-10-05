package serviceImpl;

import java.util.List;

import dao.IRoleDao;
import daoImpl.RoleDAO;
import model.RoleModel;
import service.IRoleSevice;

public class RoleSevice implements IRoleSevice{
	IRoleDao roleDao = new RoleDAO();
	@Override
	public List<RoleModel> findAll() {
		return roleDao.findAll();
	}

}
