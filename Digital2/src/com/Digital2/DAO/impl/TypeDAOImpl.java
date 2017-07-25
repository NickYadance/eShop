package com.Digital2.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Digital2.DAO.BaseDAO;
import com.Digital2.DAO.TypeDAO;
import com.Digital2.entity.Type;

public class TypeDAOImpl extends BaseDAO implements TypeDAO{
	private Connection connection;
	private PreparedStatement preparedStatement;
	private ResultSet resultSet;
	@Override
	public List<Type> getAll() {
		// TODO Auto-generated method stub
		List<Type> list = null;
		list = new ArrayList<Type>();
		String sqlString = "select * from type";
		
		try {
			connection = this.getConnection();
			preparedStatement = connection.prepareStatement(sqlString);
			resultSet = preparedStatement.executeQuery();
			Type type = null;
			
			while (resultSet.next()) {
				type = new Type();
				type.setId(resultSet.getInt("id"));
				type.setNameString(resultSet.getString(2));
				list.add(type);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			super.closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}
}
