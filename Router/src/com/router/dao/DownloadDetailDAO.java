package com.router.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.router.frontcontroller.ResponseParseFactory;
import com.router.utility.DBUtillity;


public class DownloadDetailDAO
{
	public String addDownloadLink(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		Map<String,String> responseMap = new HashMap<String, String>();
		Connection conn = null;
		try 
		{
			String link = (String) json.get("link");
			String type = (String) json.get("type");
			String addedByUsername = (String) json.get("added_by_username");
			
			
			Date d1 = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
			String dateTime = df.format(d1);
			
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="Insert into user_download_detail (link,type,status,added_date_time,addedby_username)values('"+link+"','"+type+"','In-Progress','"+dateTime+"','"+addedByUsername+"')";
			
			Statement st1 = (Statement)conn.createStatement();
			st1.executeUpdate(query1);
			st1.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally
		{
			
			try 
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		responseMap.put("response", "data saved");
		
		return parseFactory.createUserJson(responseMap);
	}
	
	public Map viewDownloadHistory(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		
		Map<String,Object> responseMap = new HashMap<String, Object>();
		Map<String,String> historyMap = new HashMap<String, String>();
		
		List<Map<String, String>> historyList = new ArrayList<Map<String,String>>();
		
		Connection conn = null;
		try 
		{
			String username = (String) json.get("username");
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="Select * from user_download_detail where addedby_username like '"+username+"'";
			
			Statement st1 = (Statement)conn.createStatement();
			ResultSet rs1 = st1.executeQuery(query1);
			while(rs1.next())
			{
				historyMap = new HashMap<String, String>();
				historyMap.put("index", rs1.getString("index"));
				historyMap.put("link", rs1.getString("link"));
				historyMap.put("type", rs1.getString("type"));
				historyMap.put("status", rs1.getString("status"));
				historyMap.put("added_date_time", rs1.getString("added_date_time"));
				
				historyList.add(historyMap);
			}
			st1.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			
			try 
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		responseMap.put("downloadHistory", historyList);
		return responseMap;
	}
	public String updateDownloadLink(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		Map<String,String> responseMap = new HashMap<String, String>();
		Connection conn = null;
		try 
		{
			String index = (String) json.get("index");
			String link = (String) json.get("link");
			String type = (String) json.get("type");
			String status = (String) json.get("status");
			String addedDateTime = (String) json.get("addedDateTime");
			
			//String status = (String) json.get("status");
			
			
			Date d1 = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
			String dateTime = df.format(d1);
			
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			//Update `user_download_detail` set status = 'Start' where 'index' like '6' 
			String query1="Update `user_download_detail` set link = '"+link+"', type = '"+type+"',status = '"+status+"',added_date_time='"+addedDateTime+"' where `index` like '"+index+"'";
			System.out.println(query1);
			Statement st1 = (Statement)conn.createStatement();
			st1.executeUpdate(query1);
			st1.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		} 
		finally
		{
			
			try 
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		responseMap.put("response", "data updated");
		
		return parseFactory.createUserJson(responseMap);
	}
	
	//Use for H/W
	public Map getDownloadLink(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		
		Map<String,Object> responseMap = new HashMap<String, Object>();
		Map<String,String> historyMap = new HashMap<String, String>();
		
		List<Map<String, String>> historyList = new ArrayList<Map<String,String>>();
		
		Connection conn = null;
		try 
		{
			String username = (String) json.get("username");
			String password = (String) json.get("password");
			
			String loginStatus = checkAuth(username, password);
			if(loginStatus.equals("TRUE"))
			{
				DBUtillity dbUtillity = new DBUtillity();
				conn = dbUtillity.getConnection();
				
				String query1="Select * from user_download_detail where status like 'In-Progress' and addedby_username like '"+username+"'";
				
				Statement st1 = (Statement)conn.createStatement();
				ResultSet rs1 = st1.executeQuery(query1);
				while(rs1.next())
				{
					historyMap = new HashMap<String, String>();
					historyMap.put("index", rs1.getString("index"));
					historyMap.put("link", rs1.getString("link"));
					historyMap.put("type", rs1.getString("type"));
					historyMap.put("status", rs1.getString("status"));
					historyMap.put("added_date_time", rs1.getString("added_date_time"));
					
					historyList.add(historyMap);
				}
				st1.close();
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			
			try 
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		responseMap.put("downloadHistory", historyList);
		return responseMap;
	}
	
	
	
	public String checkAuth(String username,String password)
	{
		Connection conn = null;
		String returnString = "";
		try
		{
			String dbPassword = "";
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="select password from user_detail where username like '"+username+"'";
			
			Statement st1 = (Statement)conn.createStatement();
			ResultSet rs1 = st1.executeQuery(query1);
			while(rs1.next())
			{
				dbPassword = rs1.getString("password");
			}			
			st1.close();
			
			if(password.equals(dbPassword) && password!="")
			{
				returnString = "TRUE";
			}
			else
			{
				returnString = "FALSE";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try 
			{
				conn.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		
		return returnString;
	}
	
}
