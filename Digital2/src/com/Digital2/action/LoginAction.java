package com.Digital2.action;
import java.sql.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	/**
	 *  
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	private String message;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userString = this.getUserName();
		String pwdString = this.getPassword();
		String back = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digital", "root", "yadance123");
			String sqlString = "select *  from user_info where username = '" + userString 
					+ "' and password = '" + pwdString + "'";
			pstmt = con.prepareStatement(sqlString);
			rs = pstmt.executeQuery();
			
			if (rs.next()){
				java.util.Map<String, Object>	session = null;
				ActionContext actionContext = ActionContext.getContext();
				session = actionContext.getSession();

				String infoUsernameString = rs.getString(2);
				String infoRealnameString = rs.getString(4);
				String infoSexString = rs.getString(5);
				String infoAddrString = rs.getString(6);
				String infoEmailString = rs.getString(9);
				
				session.put("CURRENT_USER", infoUsernameString);
				session.put("CURRENT_REALNAME", infoRealnameString);
				session.put("CURRENT_SEX", infoSexString);
				session.put("CURRENT_ADDRESS", infoAddrString);
				session.put("CURRENT_EMAIL", infoEmailString);
				back = "success";
			}
			else {
				this.setMessage("登陆失败，检查用户名和密码");
				back = "input";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (null != rs) {
					rs.close();
				}
				if (null != pstmt) {
					pstmt.close();
				}
				if (null != con) {
					con.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
				// TODO: handle exception
			}
		}
		return back;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
