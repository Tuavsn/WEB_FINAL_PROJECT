package dao;

import java.util.List;

import com.laptrinhjavaweb.mapper.RowMapper;

public interface GenericDAO<T> {
	<T> List<T> query(String sql,RowMapper<T> RowMapper,Object... parameters); //bo <T> cung duoc
	void update(String sql,Object... patameters);
	Long insert(String sql,Object... patameters);
	int count(String sql,Object... patameters);
}
