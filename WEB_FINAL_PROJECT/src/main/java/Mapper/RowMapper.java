package Mapper;

import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

public interface RowMapper<T> {
	T mapRow(ResultSet rs);
}
