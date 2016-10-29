<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.9.1.js">
</script>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

<script>
$(document).ready(function() {
	  
	    	var postdata = new Object();
	    	
    	postdata.username = $('#username').val();;
    	//postdata.name = name;
    	$.ajax({
    		type: "POST",  
    		url: "service/viewHistory",  
    		dataType: "json",  //this is important
    		contentType: "application/json",
    		data:JSON.stringify(postdata),
    		//getdata:JSON.parse(postdata),
    		async: true,	
    		success: function (data) {
    			
    		html = '<table id="example" cellpadding="2" cellspacing="2" border="1" class="display" border="1"><thead><tr><th>Added Date and Time</th><th>Status</th><th>Link</th><th>Type</th></tr></thead><tbody>';
     			
     			$.each( data.downloadHistory, function( key, value) {
     				
     				
     				html=html+'<td class="c1">'+value.added_date_time+'</td>';
     				html=html+'<td class="c1">'+value.status+'</td>';
     				html=html+'<td class="c1">'+value.link+'</td>';
     				html=html+'<td class="c1">'+value.type+'</td>';
     				html=html+'</tr>';
     				});
     			var html=html+'</tbody></table>';
     	    	document.getElementById('div1').innerHTML=html;	
     	    	
    		},
    		
    		error: function (request, status, error) {
    			alert("Error Occurred: " + request.responseText + ". Please try after sometime.");
    		}
    	
   
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
		<h1>Welcome,<%=username %></h1>
		<a href="logout.jsp"> Logout</a>
		<br><br>
		<a href="addlink.jsp">Add Download Link</a>
		<a href="history.jsp">View Download History</a>
		<input type="hidden" id="username" value=<%=session.getAttribute("username") %>>
	<%
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	%>
	<br>
	<h4>Download History</h4>
	<div id="div1">
                      
    </div>
</body>
</html>