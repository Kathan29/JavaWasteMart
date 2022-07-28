<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Forgot Password</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet" /> <!-- https://fonts.google.com/specimen/Open+Sans?selection.family=Open+Sans -->
    <link href="css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="slick/slick.css" rel="stylesheet" /> <!-- https://kenwheeler.github.io/slick/ -->
    <link href="slick/slick-theme.css" rel="stylesheet" />
	<link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com -->
	<link href="css/templatemo-new-vision.css" rel="stylesheet" />

</head>
<body>
<%@ include file="header.jsp" %>
 <br><br><br>
 <div class="row">
                    <div class="col-12">
                        <h2 class="tm-section-header tm-header-floating">Customer Forgot Details</h2>         
                    </div>
                </div>
<div class="row tm-welcome-row">
                    <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form method="post" action="ForgotController"  >
                           
                    <div class="form-group">
                              <input type="email"  name="email" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your Email"  />
                            </div>
                            
                            
             <div class="form-group">
                              <button type="submit" name="action" value="submit" >
                                Send OTP
                              </button>
                              
                            </div>
                          </form>
                          
                      </div>                    
                    </div></div>
                   <%@ include file="footer.jsp" %>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="slick/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/templatemo-script.js"></script> 
</body>
</html> 
