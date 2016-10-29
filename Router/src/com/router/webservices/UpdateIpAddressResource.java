package com.router.webservices;
import java.util.Map;

import com.router.dao.DownloadDetailDAO;
import com.router.dao.UserDetailDAO;
import com.router.frontcontroller.BaseResource;

public class UpdateIpAddressResource extends BaseResource
{	
	@Override
	public String processRequest(Map json, String method)
	{
		String returnString  = "";
		try
		{
			UserDetailDAO userDetailDAO = new UserDetailDAO();
			returnString = userDetailDAO.updateIpAddress(json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return returnString;
	}
	
}