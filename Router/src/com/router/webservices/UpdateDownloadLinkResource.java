package com.router.webservices;
import java.util.Map;

import com.router.dao.DownloadDetailDAO;
import com.router.frontcontroller.BaseResource;

public class UpdateDownloadLinkResource extends BaseResource
{	
	@Override
	public String processRequest(Map json, String method)
	{
		String returnString  = "";
		try
		{
			DownloadDetailDAO downloadDetailDAO = new DownloadDetailDAO();
			returnString = downloadDetailDAO.updateDownloadLink(json);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return returnString;
	}
	
}