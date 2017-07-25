package com.Digital2.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.Digital2.DAO.TypeDAO;
import com.Digital2.DAO.impl.TypeDAOImpl;
import com.Digital2.entity.Type;
import com.opensymphony.xwork2.ActionSupport;

public class ProductInfoAction extends ActionSupport implements RequestAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Map<String, Object>	requsMap;

	@Override
	public void setRequest(java.util.Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.requsMap = arg0;
	}
	
	public String list() throws Exception{
		TypeDAO typeDAO = new TypeDAOImpl();
		List<Type> list = typeDAO.getAll();
		if (list.size()>0){
			requsMap.put("typelist" , list);
		}
		return "index";
	}
}
