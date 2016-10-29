package com.router.utility;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBUtillity 
{
	public Connection getConnection()
	{
//		String url="jdbc:mysql://localhost/router";
//		String userName = "root";
//		String password = "";
		
		String url="jdbc:mysql://127.7.116.130:3306/router";
		//String url="jdbc:mysql://localhost:3307/router";
		String userName = "adminecKKVbf";
		String password = "yM24tkaasjdt";
		
		Connection conn = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection(url, userName, password);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return conn;
	}
}
