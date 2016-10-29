package com.router.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
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

public class UserDetailDAO 
{
	public String addUser(Map json)
	{
		System.out.println(json.toString());
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		Map<String,String> responseMap = new HashMap<String, String>();
		Connection conn = null;
		try 
		{
			String firstName = (String) json.get("first_name");
			String lastName = (String) json.get("last_name");
			String emailId = (String) json.get("email_id");
			String mobileNo = (String)json.get("mobile_no");
			String username = (String)json.get("username");
			String password = (String) json.get("password");
			
			Date d1 = new Date();
			//YYYY-MM-DD HH:MI:SS
			SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
			String dateTime = df.format(d1);
			
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="Insert into user_detail (first_name,last_name,email_id,mobile_no,username,password,created_date_time)values('"+firstName+"','"+lastName+"','"+emailId+"','"+mobileNo+"','"+username+"','"+password+"','"+dateTime+"')";
			
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		responseMap.put("response", "data saved");
		
		return parseFactory.createUserJson(responseMap);
	}
	
	public String checkLogin(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		Map<String,String> responseMap = new HashMap<String, String>();
		Connection conn = null;
		try 
		{
			String username = (String)json.get("username");
			String password = (String) json.get("password");
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
				responseMap.put("response", "TRUE");
			}
			else
			{
				responseMap.put("response", "FALSE");
			}
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
		return parseFactory.createUserJson(responseMap);
	}
	public String checkLogin(String username, String password)
	{
		Connection conn = null;
		String returnString = "";
		try 
		{
			//String username = (String)json.get("username");
			//String password = (String) json.get("password");
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
		
		return returnString;
	}
	
	public String updateIpAddress(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		Map<String,String> responseMap = new HashMap<String, String>();
		Connection conn = null;
		try 
		{
			String ipAddress = (String) json.get("ip_address");
			String userName = (String) json.get("user_name");
			
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="Update user_detail set ip_address = '"+ipAddress+"' where username like '"+userName+"'";
			
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
	
	
	public Map getIpAddress(Map json)
	{
		ResponseParseFactory parseFactory = new ResponseParseFactory();
		
		Map<String,Object> responseMap = new HashMap<String, Object>();
		String ipAddress="";
		//Map<String,String> historyMap = new HashMap<String, String>();
		
		//List<Map<String, String>> historyList = new ArrayList<Map<String,String>>();
		
		Connection conn = null;
		try 
		{
			String username = (String) json.get("username");
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="Select ip_address from user_detail where username like '"+username+"' ";
			
			Statement st1 = (Statement)conn.createStatement();
			ResultSet rs1 = st1.executeQuery(query1);
			
			
			while(rs1.next())
			{
				ipAddress = rs1.getString("ip_address");
				
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
		
		responseMap.put("ip_address", ipAddress);
		return responseMap;
	}
	
	public String getIpAddress(String username)
	{
		
		String ipAddress="";
		//Map<String,String> historyMap = new HashMap<String, String>();
		
		//List<Map<String, String>> historyList = new ArrayList<Map<String,String>>();
		
		Connection conn = null;
		try 
		{
			//String username = (String) json.get("username");
			
			DBUtillity dbUtillity = new DBUtillity();
			conn = dbUtillity.getConnection();
			
			String query1="Select ip_address from user_detail where username like '"+username+"' ";
			
			Statement st1 = (Statement)conn.createStatement();
			ResultSet rs1 = st1.executeQuery(query1);
			
			
			while(rs1.next())
			{
				ipAddress = rs1.getString("ip_address");
				
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
		
		//responseMap.put("ip_address", ipAddress);
		return ipAddress;
	}
	
}
