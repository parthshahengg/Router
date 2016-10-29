package com.router.webservices;
import java.util.Map;

import com.router.dao.DownloadDetailDAO;
import com.router.dao.UserDetailDAO;
import com.router.frontcontroller.BaseResource;
import com.router.frontcontroller.ResponseParseFactory;

public class LoginResource extends BaseResource
{	
	@Override
	public String processRequest(Map json, String method)
	{
		String returnString  = "";
		try
		{
			UserDetailDAO userDetailDAO = new UserDetailDAO();
			returnString = userDetailDAO.checkLogin(json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return returnString;
	}
	
}