package com.router.webservices;
import java.util.Map;

import com.router.dao.DownloadDetailDAO;
import com.router.frontcontroller.BaseResource;
import com.router.frontcontroller.ResponseParseFactory;

public class GetDownloadLinkResource extends BaseResource
{	
	@Override
	public String processRequest(Map json, String method)
	{
		String returnString  = "";
		Map returnjson = null;
		try
		{
			DownloadDetailDAO downloadDetailDAO = new DownloadDetailDAO();
			returnjson = downloadDetailDAO.getDownloadLink(json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		returnString = new ResponseParseFactory().createUserJson(returnjson);
		return returnString;
	}
	
}