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

    $('#signup').click(function () {

    	var postdata = new Object();
    	

    	postdata.first_name = $('#first_name').val();
    	postdata.last_name = $('#last_name').val();
    	postdata.email_id = $('#email_id').val();
    	postdata.mobile_no = $('#mobile_no').val();
    	postdata.username = $('#username').val();
    	postdata.password = $('#password').val();
    	
    	$.ajax({
    		type: "POST",  
    		url: "service/signup",  
    		dataType: "json",  //this is important
    		contentType: "application/json",
    		data: JSON.stringify(postdata),
    		async: true,
    		success: function (data) {
    			alert("ok");
    			window.location.replace("index.jsp");
    			
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
	<h1>Signup</h1><br>
	
	
	First Name : <input type="text" name="first_name" id="first_name"><br>
	Last Name : <input type="text" name="last_name" id="last_name"><br>
	Email : <input type="text" name="email_id" id="email_id"><br>
	Mobile No: <input type="text" name="mobile_no" id="mobile_no"><br>
	Username : <input type="text" name="username" id="username"><br>
	Password : <input type="password" name="password" id="password"><br>
	
	<input type="button" value="Signup" id="signup">
	
	
</body>
</html>