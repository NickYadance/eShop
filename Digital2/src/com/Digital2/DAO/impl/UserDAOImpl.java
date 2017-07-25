package com.Digital2.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Digital2.DAO.BaseDAO;

import com.Digital2.DAO.UserDAO;
import com.Digital2.entity.User;;

public class UserDAOImpl extends BaseDAO implements UserDAO{
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	
	@Override
	public int addUser(User user){
		int result = 0;
		String sqlString = "insert into user_info(username, password, "
				+ "realname, address, email) values(?,?,?,?,?)";
		try {
			connection=this.getConnection();
			preparedStatement=connection.prepareStatement(sqlString);
			preparedStatement.setString(1, user.getUsernameString());
			preparedStatement.setString(2, user.getPasswordString());
			preparedStatement.setString(3, user.getRealnameString());
			preparedStatement.setString(4, user.getAddressString());
			preparedStatement.setString(5, user.getEmailString());
			result = preparedStatement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			this.closeAll(connection, preparedStatement, resultSet);
		}
		return result;
	}
}
