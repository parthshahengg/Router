<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = (String)session.getAttribute("username");
		String ipAddress = (String)session.getAttribute("ip_address");
		
		if(username!="" && username!=null)
		{
	%>
		<h1>Dashboard</h1><br>
		<h1>Welcome,<%=username %></h1>
		
		<a href="ftp://ftpuser:ftpuser@<%=ipAddress%>/files/" target="_blank">Access Your Download Data</a><br>
		
		<a href="logout.jsp"> Logout</a>
		<br><br>
		<a href="addlink.jsp">Add Download Link</a>
		<a href="history.jsp">View Download History</a>
	<%
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>