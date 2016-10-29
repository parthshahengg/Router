<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script>
  $(document).ready(function() {

    $('#add').click(function () {

    	var postdata = new Object();
    	

    	postdata.link = $('#link').val();
    	postdata.type = $('#type').val();
    	postdata.added_by_username = $('#username').val();
    	
    	
    	$.ajax({
    		type: "POST",  
    		url: "service/addLink",  
    		dataType: "json",  //this is important
    		contentType: "application/json",
    		data: JSON.stringify(postdata),
    		async: true,
    		success: function (data) {
    			alert("ok");
    			window.location.replace("dashboard.jsp");
    			
    		},
    		error: function (request, status, error) {
    			alert("Error Occurred: " + request.responseText + ". Please try after sometime.");
    		}
    	});
    	
    
    });
  });
</script>

</head>
<body>
	<%
		String username = (String)session.getAttribute("username");
		if(username!="" && username!=null)
		{
	%>
		<h1>Dashboard</h1><br>
		<p>Welcome,<%=username %></p>
		<a href="logout.jsp"> Logout</a>
		<br><br>
		<a href="addlink.jsp">Add Download Link</a>
		<a href="history.jsp">View Download History</a>
		<h3>Add New Link</h3>
		Link : <input type="text" name="link" id="link"><br><br>
		Type :
		<select name="type" id="type">
			<option value="youtube">Youtube</option>
			<option value="torrent">Torrent</option>
			<option value="normal">Other</option>
		</select><br><br>
		<input type="hidden" name="username" id="username" value=<%=session.getAttribute("username") %>>
		<input type="button" value="Add Link" id="add">
		
		
	<%
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>