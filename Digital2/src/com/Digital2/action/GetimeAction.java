package com.Digital2.action;


import java.sql.Time;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GetimeAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	@Override
	public String execute() throws Exception {
		java.util.Map<String, Object>	session = null;
		ActionContext actionContext = ActionContext.getContext();
		session = actionContext.getSession();
		
		long currentTime = System.currentTimeMillis();
		long startTime = 0;
		long usedTime = 0;
		
		if (session.get("startTime") == null){
			startTime = currentTime ;
			session.put("startTime", startTime);
		}else {
			startTime = (long) session.get("startTime");
			Time time = new Time(startTime);
			System.out.println(time);
		}
		usedTime = (currentTime - startTime) ;
		long second = (usedTime / 1000) % 60;
		long minute = (usedTime / (1000 * 60)) % 60;
		long hour = (usedTime / (1000 * 60 * 60)) % 24;
		String time = String.format("%02d:%02d:%02d", hour, minute, second);
		session.put("CURRENT_USEDTIME", time);
		return "success";
	}
}
