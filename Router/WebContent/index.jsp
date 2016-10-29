<!DOCTYPE html>
<html lang="en-US" class="no-js">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Smart Device</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="http://reversemortgagecartoon.com/wp-content/themes/vk/css/style.css" rel="stylesheet" type="text/css">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

<link href='https://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>
<link rel='stylesheet' href='css/bootstrap.min.css' type='text/css' media='all' />
<link rel='stylesheet' href='css/style.css' type='text/css' media='all' />

<!--[if lt IE 10]>
<link rel='stylesheet' id='twentysixteen-ie-css'  href='http://reversemortgagecartoon.com/wp-content/themes/vk/css/ie.css?ver=20150930' type='text/css' media='all' />
<![endif]-->
<!--[if lt IE 9]>
<link rel='stylesheet' id='twentysixteen-ie8-css'  href='http://reversemortgagecartoon.com/wp-content/themes/vk/css/ie8.css?ver=20151230' type='text/css' media='all' />
<![endif]-->
<!--[if lt IE 8]>
<link rel='stylesheet' id='twentysixteen-ie7-css'  href='http://reversemortgagecartoon.com/wp-content/themes/vk/css/ie7.css?ver=20150930' type='text/css' media='all' />
<![endif]-->

<!--[if lt IE 9]>
<script type='text/javascript' src='http://reversemortgagecartoon.com/wp-content/themes/vk/js/html5.js?ver=3.7.3'></script>
<![endif]-->


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
    	postdata.username = $('#username_new').val();
    	postdata.password = $('#password_new').val();
    	
    	$.ajax({
    		type: "POST",  
    		url: "service/signup",  
    		dataType: "json",  //this is important
    		contentType: "application/json",
    		data: JSON.stringify(postdata),
    		async: true,
    		success: function (data) {
    			alert("You are Registered");
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

<body class="home page page-id-2 page-template page-template-tpl-home page-template-tpl-home-php" id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<header>
  <div class="navbar navbar-default navbar-fixed-top header" role="navigation">
    <div class="container">
      <div class="row">
		<div class="col-sm-12">	
          <div class="logo"> <a href="http://reversemortgagecartoon.com "><img src="images/logo.png" alt=""> </a></div>
      
         	<div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="login-button">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal">login</a> </li>
					<li><a href="#" data-toggle="modal" data-target="#myModal-reg">Register</a> </li>
				</ul>
			</div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
          <nav class="right-menu">

          	<div class="menu-header-menu-container"><ul id="menu-header-menu" class="menu">
			
<li id="menu-item-8" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8"><a href="#about-us">About Us</a></li>
<li id="menu-item-9" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9"><a href="#contact-us">Contact Us</a></li>
</ul></div>          </nav>
         </div>
          
      	</div>
      </div>
    </div>
  </div>
</header>
<!--section1 start -->
<section>
  <div class="banner">
        <img src="images/banner.jpg" alt="">
	</div>
</section>
<!--section1 start --> 

<!--section2 start -->
<section>
  <div class="mortgage " id="reverse-mortgage">
    <h2>Smart Device Features</h2>
    <div class="container">
      <div class="row">	
      	
        <div class="col-sm-4">
          <div class="ownership"><span><i class="fa fa-download fa-3x" aria-hidden="true"></i>
</span>
            <h3>Download Anything From Anywhere</h3>
            <p>Download your favorite video, images, document without start your PC.</p>
          </div>
        </div>

        <div class="col-sm-4">
          <div class="ownership"><span><i class="fa fa-wifi" aria-hidden="true"></i>
</span>
            <h3>Easy To Transfer Content</h3>
            <p>Transfer your downloaded content at very high speed over wifi</p>
          </div>
        </div>

        <div class="col-sm-4">
          <div class="ownership"><span><i class="fa fa-mobile fa-5x" ></i>
</span>
            <h3>Control From App</h3>
            <p>You can also manage your download content through mobile app</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!--section2 closse --> 

<!--section3 start -->
<!--
<section>
  <div class="seniors">
    <h2>WE LOVE HELPING SENIORS</h2>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="seniors-in">
            <ul>

 <li><img src="/img1.png" alt=""></li>
 <li><img src="/img2.png" alt=""></li>
 <li><img src="/img3.png" alt=""></li>
 <li><img src="/img4.png" alt=""></li>
 <li><img src="/img5.png" alt=""></li>
 <li><img src="/img6.png" alt=""></li>
            
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
-->
<!--section3 closse --> 

<!--section4 start -->
<section id="about-us" >
  <div class="about-us">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="about-us-in">
            <h2>ABOUT US</h2>
            <p style="color:black">We are team of talented experts with amazing potential to serve the best in the industry. We build a great product for you. It is created to make your data and download more accessible and easier. We believe that internet should be more usable and accessible, because of that we created a device through which you can control your data and download from anywhere using multiple devices. </p>            
            <a href="#page-top" class="page-scroll">More Information</a> </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--section4 close --> 

<!--booter start -->
<footer id="contact-us">
  <div class="footer">
    <h2>Contact us</h2>
    <div class="container">
      <div class="row">
      	<div class="col-sm-8">
         <div class="contect-bottom">
         <h3 style="color:#fff">Smart Device :</h3>

<p style="color:#fff; margin-bottom:120px">
	</br>
	Smart Device is a device which makes your Internet related task easier. You can control all your downloads from anywhere in this world
	through web browser or using your smart phone. This device wiil also work for you local cloud backup or storage device, wher eyou can mande your 
	storage device from any where using browser or smart phone.
</p>      	
        </div>
      	</div>
        <div class="col-sm-4">
          <div class="details">
						<h3>LOCATION DETAILS</h3>	<ul>
              <li><i class="fa fa-university"></i><span>Ahmedabad, Gujarat 380013</span></li>
                           <li><i class="fa fa-phone" aria-hidden="true"></i><span>+1 877-410-4002</span></li>
              <li><i class="fa fa-envelope"></i><span>info@smartdevice.com</span></li>
            </ul>					          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
          <div class="contect-bottom">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--booter start --> 

<div id="privacy-policy-popup" class="simplePopup">
   <strong>Privacy Policy</strong>
Customer service is very important to us. Safeguarding your privacy is also very important to us. We have adopted standards that help maintain and preserve the confidentiality of our customers.

<strong>What do we collect?</strong>
We may collect the following information:
1. name
2. contact information including email address
3. demographic information such as postcode
4. other information relevant to receiving a free quote

<strong>What do we do with the information we gather</strong>?

We require this information to understand your needs and provide you with better service, and in particular for the following reasons:
1. We may use the information to improve our services.
2. We may use the information to customize the website according to your interests.

<strong>Who do you Share the Information with?</strong>
Your personal information will only be retained for the purpose of providing you with our response to your query and will not be made available to any third party except as necessary to be disclosed to any related entity for the purpose intended or as required to be disclosed under law. We also offer the opportunity to “opt out” of receiving information or being contacted by us.

<strong>How is my information stored?</strong>
Information collected by Reversemortgagecartoon.com is securely stored and is not accessible to third parties or employees of Reversemortgagecartoon.com except for use as indicated above.

<strong>What partners or service providers have access to Information from?</strong>
Reversemortgagecartoon.com has entered into and will continue to enter into partnerships and other affiliations with a number of vendors in order to operate and maintain our website. Such vendors may have access to Information on a need to know basis. Our privacy policy does not cover their collection or use of this information.

Disclosure to comply with law. We will disclose Information in order to comply with a court order or subpoena or a request from a law enforcement agency to release information. We will also disclose Information when reasonably necessary to protect the safety of our Project Owners and Contractors.

<strong>How does the Site keep the Information secure?</strong>

Employees are familiar with our security policy and practices. Sensitive information, such as credit card numbers is protected by encryption protocols, in place to protect information sent over the Internet.
While we take commercially reasonable measures to maintain a secure site, electronic communications and databases are subject to errors, tampering and break-ins, and we cannot guarantee or warrant that
such events will not take place and we will not be liable to Project Owners or Contractors for any such occurrences.

<strong>How do we use cookies?</strong>

A cookie is a small file which asks permission to be placed on your computer’s hard drive. Once you agree,the file is added and the cookie helps analyze web traffic or lets you know when you visit a particular site.
Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.

We use traffic log cookies to identify which pages are being used. This helps us analyze data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.

Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.

You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.

Links to other websites:

Our website may contain links to enable you to visit other websites of interest easily. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide while visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.

<strong>Can Information sent via the website be retrieved or corrected for inaccuracies?</strong>

Any requests to retrieve or correct any inaccuracies should be directed to :info@reversemortgagecartoon.com.  
</div>
 
<div id="strategic-partnerships-popup" class="simplePopup">
    <div role="form" class="wpcf7" id="wpcf7-f4-o2" lang="en-US" dir="ltr">
<div class="screen-reader-response"></div>
<form action="/#wpcf7-f4-o2" method="post" class="wpcf7-form" novalidate="novalidate">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="4" />
<input type="hidden" name="_wpcf7_version" value="4.4" />
<input type="hidden" name="_wpcf7_locale" value="en_US" />
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f4-o2" />
<input type="hidden" name="_wpnonce" value="019fe2147a" />
</div>
<h2 style="text-align:center;">We are expanding our network throughout the USA. Please contact us for more information.</h2>
<div class="col-sm-6">
<div class="contect-us">
<span class="wpcf7-form-control-wrap Name"><input type="text" name="Name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Name*" /></span><br />
<span class="wpcf7-form-control-wrap email-841"><input type="email" name="email-841" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="E-mail*" /></span></p></div>
</div>
<div class="col-sm-6">
<div class="contect-us">
<span class="wpcf7-form-control-wrap Phone"><input type="tel" name="Phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel" aria-required="true" aria-invalid="false" placeholder="Phone*" /></span><br />
<span class="wpcf7-form-control-wrap text-766"><input type="text" name="text-766" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Company*" /></span>
</div>
</div>
<div class="col-md-12 col-sm-12 col-xs-12 contect-us" style="padding-left:0px; ">
<span class="wpcf7-form-control-wrap textarea-761"><textarea name="textarea-761" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Comments"></textarea></span>
</div>
<div class="col-md-6 col-sm-6 col-xs-12 contect-us">
<input type="submit" value="Send" class="wpcf7-form-control wpcf7-submit" />
</div>
<div class="wpcf7-response-output wpcf7-display-none"></div></form></div></div>
		  <!--booter bottom start -->
  <div class="footer-bottom">
    <div class="container">
      <div class="footer-bottom-in"> <span>Copyright © 2016 SmartDevices.com. All rights reserved.</span>
      <div class="footer-bottom-in">
      <!--ul>
      <li><a href="#" class="privacy-policy">Privacy Policy</a></li>
	<li><a href="#" class="strategic-partnerships">Strategic Partnerships</a></li>
 </ul-->
<div class="menu-footer-menu-container"><ul id="menu-footer-menu" class="menu"><li id="menu-item-10" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10"><a href="#">Privacy Policy</a></li>
<li id="menu-item-11" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11"><a href="#">Strategic Partnerships</a></li>
</ul></div></div>
        
      </div>
    </div>
  </div>
</footer>
<!--booter bottom closse --> 

<script src="js/jquery.v1.11.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.easing.min.js"></script> 
<script src="js/scrolling-nav.js"></script>

</body>
</html>

<!-- Trigger the modal with a button -->


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog"> 
      <!-- Modal content-->
      <section id="login">
    <div class="container">
    	<div class="row">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">
                <h1>Log in with your email account</h1>
                    <form role="form" action="<%=request.getContextPath()%>/LoginController" method="post" id="login-form" autocomplete="off">
                        <div class="form-group">
                            <label for="email1" class="sr-only">Username</label>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <span class="character-checkbox" onclick="showPassword()"></span>
                            <span class="label">Show password</span>
                        </div>
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in">
                    </form>
                    <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forgot your password?</a>
                    <hr>
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div> <!-- /.row -->
    </div> <!-- /.container -->
</section>
</div>
  </div>
  
  <div class="modal fade" id="myModal-reg" role="dialog">
    <div class="modal-dialog"> 
      <!-- Modal content-->
      <section id="login">
    <div class="container">
    	<div class="row">
    	    <div class="col-xs-12">
        	    <div class="form-wrap">
                <h1>Register your account</h1>
                    <form role="form" action="" method="post" id="reg-form" autocomplete="off">
                        <div class="form-group">
                            <label for="f_name" class="sr-only">First Name</label>
                            <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First Name">
                        </div>
						<div class="form-group">
                            <label for="l_name" class="sr-only">Last Name</label>
                            <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last Name">
                        </div>
						<div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="email" name="email_id" id="email_id" class="form-control" placeholder="somebody@example.com">
                        </div>
						<div class="form-group">
                            <label for="mobile_no" class="sr-only">Mobile No.</label>
                            <input type="number" name="mobile_no" id="mobile_no" class="form-control" placeholder="Mobile Number">
                        </div>
						<div class="form-group">
                            <label for="u_name" class="sr-only">User Name</label>
                            <input type="text" name="username_new" id="username_new" class="form-control" placeholder="User Name">
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <input type="password" name="password_new" id="password_new" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <span class="character-checkbox" onclick="showPassword()"></span>
                            <span class="label">Show password</span>
                        </div>
                        <input type="button" id="signup" class="btn btn-custom btn-lg btn-block" value="Register">
                    </form>
                    <hr>
        	    </div>
    		</div> <!-- /.col-xs-12 -->
    	</div> <!-- /.row -->
    </div> <!-- /.container -->
</section>
</div>
  </div>