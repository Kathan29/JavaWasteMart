<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Login Page</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet" /> <!-- https://fonts.google.com/specimen/Open+Sans?selection.family=Open+Sans -->
    <link href="css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="slick/slick.css" rel="stylesheet" /> <!-- https://kenwheeler.github.io/slick/ -->
    <link href="slick/slick-theme.css" rel="stylesheet" />
	<link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com -->
	<link href="css/templatemo-new-vision.css" rel="stylesheet" />

</head>
<body>
${msg }
<%@ include file="header.jsp" %>
 
 <div class="tm-carousel">
 
 </div>
 
                 <div class="row" >
                    <div class="col-12" style="display:flex; justify-content:center">
                        <h2 class="tm-section-header tm-header-floating">Login for active Users</h2>         
                    </div>
                </div>
                
<div class="row tm-welcome-row" style="display:flex; justify-content:center; margin-top:50px">
                    <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form method="post" action="LoginController"  >
                           
                    <!-- <div class="form-group">
                              <input type="email"  name="email" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your Email"  />
                            </div>
                            
                            <div class="form-group">
                              <input type="password"  name="password" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your password" />
                            </div> -->
                      <div class="mb-3" >
  <label for="formGroupExampleInput" class="form-label">Enter Email</label>
  <input type="email" name="email" class="form-control" id="formGroupExampleInput" placeholder="Type your email here">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Enter Password</label>
  <input type="password" name="password" class="form-control" id="formGroupExampleInput2" placeholder="Type your password here">
</div>
                            <div class="form-group mb-0">
                              <button type="submit" class="btn btn-outline-secondary btn-lg" style="margin-top:15px;">
                                Login
                              </button>
                               <a href="registration.jsp" class="btn btn-link" style="display:flex;justify-content:right">
                                Not Registered Yet!
                              </a>
                              </div>
                             
                              <div class="form-group mb-0">
                              <a href="forgot.jsp" class="btn btn-link">
                                Forgot Password
                              </a>
                            </div>
                          </form>
                          
                      </div>                    
                    </div>
                    </div>
                    
                   <%@ include file="footer.jsp" %>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="slick/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/templatemo-script.js"></script> 
</body>
</html> 
