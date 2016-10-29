package com.router.webservices;
import java.util.Map;

import com.router.dao.UserDetailDAO;
import com.router.frontcontroller.BaseResource;
import com.router.frontcontroller.ResponseParseFactory;

public class GetIpAddressResource extends BaseResource
{	
	@Override
	public String processRequest(Map json, String method)
	{
		String returnString  = "";
		Map returnjson = null;
		try
		{
			UserDetailDAO userDetailDAO = new UserDetailDAO();
			returnjson = userDetailDAO.getIpAddress(json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		returnString = new ResponseParseFactory().createUserJson(returnjson);
		return returnString;
	}
	
}