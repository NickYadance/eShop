package com.Digital2.action;

import com.Digital2.DAO.UserDAO;
import com.Digital2.DAO.impl.UserDAOImpl;
import com.Digital2.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;
	private String repasswordString;
	private String message;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRepasswordString() {
		return repasswordString;
	}
	public void setRepasswordString(String repasswordString) {
		this.repasswordString = repasswordString;
	}
	
	public String execute() throws Exception {
		String backString;
		UserDAO userDAO = new UserDAOImpl();
		int result = userDAO.addUser(user);
		if (result != 0){
			java.util.Map<String, Object>	session = null;
			ActionContext actionContext = ActionContext.getContext();
			session = actionContext.getSession();
			session.put("CURRENT_USER", user.getUsernameString());
			session.put("CURRENT_REALNAME", user.getRealnameString());
			session.put("CURRENT_SEX", user.getSexString());
			session.put("CURRENT_ADDRESS", user.getAddressString());
			session.put("CURRENT_EMAIL", user.getEmailString());
			backString = "success";
		}
		else {
			this.setMessage("注册失败，用户名已经存在");
			backString = "input";
		}
		return backString;
	}
	
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if (user.getUsernameString().length() == 0){
			addFieldError("username", "用户名不能为空");
		}
		if (user.getPasswordString().length() == 0){
			addFieldError("password", "密码不能为空");
		}
		if (!(user.getPasswordString().equals(repasswordString))){
			addFieldError("repassword", "两次输入的密码不一致");
		}
	}
}
