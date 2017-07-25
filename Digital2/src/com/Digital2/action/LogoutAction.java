package com.Digital2.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		java.util.Map<String, Object>	session = null;
		ActionContext actionContext = ActionContext.getContext();
		session = actionContext.getSession();
		session.clear();
		return "success";
	}
	
}
