package com.Digital2.intercepter;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorizationIntercepter extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		Map<String, Object>	sessionMap = actionInvocation.getInvocationContext().getSession();
		String userString = (String)sessionMap.get("CURRENT_USER");
		if (userString==null){
			return Action.INPUT;
		}
		else {
			return actionInvocation.invoke();
		}
	}
}
