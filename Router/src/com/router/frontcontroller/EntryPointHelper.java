package com.router.frontcontroller;


import org.restlet.Application;
import org.restlet.Restlet;
import org.restlet.routing.Router;
import org.restlet.resource.ResourceException;

import com.router.webservices.*;
                                                                               

public class EntryPointHelper extends Application{
	@Override
    public synchronized Restlet createInboundRoot()
    {
		Router router = new Router();
		try
		{
			System.out.println("in router");
		    router.attach("/signup",SignupResource.class);
		    router.attach("/addLink",AddDownloadLinkResource.class);
		    router.attach("/viewHistory",ViewDownloadHistoryResourse.class);
		    router.attach("/login",LoginResource.class);
		    router.attach("/updateLink",UpdateDownloadLinkResource.class);
		    
		    //For H/W
		    router.attach("/getDownloadLink",GetDownloadLinkResource.class);
		    
		    router.attach("/updateIpAddress",UpdateIpAddressResource.class);
		    router.attach("/getIpAddress",GetIpAddressResource.class);
		    
		}
		catch(Exception e)
		{
			 throw new ResourceException(1);
		}
		
        return router;
    }
}
