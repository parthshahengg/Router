package com.router.frontcontroller;
import java.util.Map;

import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.restlet.data.MediaType;
import org.restlet.ext.json.JsonRepresentation;
import org.restlet.representation.Representation;
import org.restlet.representation.StringRepresentation;
import org.restlet.resource.Post;
import org.restlet.resource.Get;
import org.restlet.resource.ServerResource;

import com.router.frontcontroller.ResponseParseFactory;



/**
 * This class is used to parse all the request comes to particular resource class. <br/>
 * It will parse all the POST and GET request and forward it to particular resource class with key pair mapping in MAP. <br/>
 * It only needs to extend this class to use POST and GET request for all the resource class.
 * @author haresh.indianic
 */

public abstract class BaseResource extends ServerResource{

	 protected ResponseParseFactory parseFactory = null;
	// private Logger logger = Logger.getLogger(BaseResource.class);
	 String jsonString="";
	 Map json =null;
	 
	
	/**
	 * This method handle the post request for this service class, in the Representation entity, and retrieve data from database with the help of the dao and the helper class.
	 * @param entity It contains the request entity in JSON text
	 * @return Representation It will return the data in JSON string as representation
	 * @see com.indianic.core.GeneralDAO#getStackTraceAsString(Exception)
	 * @see com.indianic.core.ResponseParseFactory#requestTypeNotMatch()
	 */
	@Post("json")
	public Representation doPost(Representation entity)
	{
		
		jsonString = "";
		parseFactory = new ResponseParseFactory();
		try {
			JsonRepresentation represent = new JsonRepresentation(entity);
			JSONObject jsonobject = represent.getJsonObject();
			JSONParser parser = new JSONParser();
			String jsonText = jsonobject.toString();
			json = (Map) parser.parse(jsonText);
			//System.out.println(json.get("value"));
			jsonString = processRequest(json, "post");
			System.out.println("JsonString Response: " + jsonString);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println("Json String :=>"+jsonString);
		
		return new StringRepresentation(jsonString, MediaType.APPLICATION_JSON);
	}
	
	
	/**
	 * This method handle the get request for the particular service class and retrieves data in the form type. 
	 * @return Representation It will return the data in JSON string as representation
	 * @see com.indianic.core.GeneralDAO#getMapFromParam(org.restlet.data.Form)
	 * @see com.indianic.core.GeneralDAO#getStackTraceAsString(Exception)
	 * @see com.indianic.core.ResponseParseFactory#requestTypeNotMatch()
	 */
	
	@Get
	public Representation doGet(){
		System.out.println("here6");
		parseFactory = new ResponseParseFactory();
		jsonString = "";
		try {
//			json = GeneralDAO.getMapFromParam(getRequest().getResourceRef().getQueryAsForm());
			jsonString = processRequest(json,"get");
			
			System.out.println("here3");
			
		} catch (Exception e) {
			e.printStackTrace();
			//logger.info(GeneralDAO.getStackTraceAsString(e));
			//jsonString = parseFactory.requestTypeNotMatch();
		}
		return new StringRepresentation(jsonString, MediaType.APPLICATION_JSON);
	}

	/**
	 * This abstract class will process all the request weather it is GET or POST to their respective service class.
	 * all the service class which extends BaseResource class must have this method to process all the request.
	 * @param json It contains JSON request in the form of key pair mapping. 
	 * @param method It contains the Request Name i.e. GET or POST
	 */
	public abstract String processRequest(Map json,String method);
	
}
	