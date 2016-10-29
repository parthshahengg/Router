package com.router.frontcontroller;



import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import org.json.simple.JSONValue;

public class ResponseParseFactory{
		
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String getSuccessJsonString(String msg){
		String jsonString = "";
		LinkedHashMap list = new LinkedHashMap();
		list.put("result", msg);
		jsonString = JSONValue.toJSONString(list);
		return jsonString;
	}
	
	@SuppressWarnings("rawtypes")
	public String createUserJson(Map json){
		String jsonString = "";
		jsonString = JSONValue.toJSONString(json);
		return jsonString;
	}	
}



