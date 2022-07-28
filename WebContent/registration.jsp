<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Registration Page</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet" /> <!-- https://fonts.google.com/specimen/Open+Sans?selection.family=Open+Sans -->
    <link href="css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="slick/slick.css" rel="stylesheet" /> <!-- https://kenwheeler.github.io/slick/ -->
    <link href="slick/slick-theme.css" rel="stylesheet" />
	<link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com -->
	<link href="css/templatemo-new-vision.css" rel="stylesheet" />
</head>
<body>
<%@ include file="header.jsp" %>
 <div class="tm-carousel">
 </div>
 <div class="row">
                    <div class="col-12" style="display:flex; justify-content:center">
                        <h2 class="tm-section-header tm-header-floating">Registration for new Users</h2>         
                    </div>
                </div>
<div class="row tm-welcome-row" style="display:flex; justify-content:center;margin-top:50px">
                    <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form method="post" action="CustomerController"  >
                            <!-- <div class="form-group">
                              <input type="text" name="name" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your Name" />
                            </div> 
                             <div class="form-group">
                              <input type="email" name="email" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your Email"  />
                            </div>
                            <div class="form-group">
                              <input type="radio"  name="gender" value="male" />Male
                              <input type="radio"  name="gender" value="female"/>Female
                            </div>
                            <div class="form-group">
                              <textarea rows="4"  name="address" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Address" ></textarea>
                            </div>
                             <div class="form-group">
                              <input type="text"  name="mobno" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your Mob No"  />
                            </div>
                              <div class="form-group">
                              <input type="password"  name="password" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Your password" />
                            </div>
                            -->
                            <div class="input-group mb-5">
  							<span class="input-group-text" id="basic-addon1">Name</span>
  						<input type="text" name="name" class="form-control" placeholder="Enter Username" aria-label="Username" aria-describedby="basic-addon1">
							</div>
							<div class="input-group mb-5">
  							<span class="input-group-text" id="basic-addon1">Email</span>
  						<input type="email" name="email" class="form-control" placeholder="Enter Emailid" aria-label="Emailid" aria-describedby="basic-addon1">
							</div>
                   
                            
                            
                            <div class="form-check form-check-inline mb-5">
								  <span class="input-group-text" id="basic-addon1">Gender</span>&nbsp;&nbsp;&nbsp;
								  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
								  <label class="form-check-label" for="inlineRadio1">Male</label>
								</div>
								<div class="form-check form-check-inline">
								  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
								  <label class="form-check-label" for="inlineRadio2">Female</label>
								</div>
                            
                            <div class="input-group mb-5">
								  <span class="input-group-text">Address</span>
								  <textarea class="form-control" name="address" aria-label="Enter address"></textarea>
								</div>
								
								<div class="input-group mb-5">
								  <span class="input-group-text" id="basic-addon1">Mobile No</span>
								  <input type="text" name="mobno" class="form-control" placeholder="Enter Mobile No" aria-label="MobileNo" aria-describedby="basic-addon1">
								</div>
                            
                              <div class="input-group mb-5">
								  <span class="input-group-text" id="basic-addon1">Password</span>
								  <input type="text" name="password" class="form-control" placeholder="Enter Password" aria-label="Password" aria-describedby="basic-addon1">
								</div>
                            
                            
                          
             <div class="form-group mb-0">
                              <button type="submit" class="btn btn-outline-success btn-lg" style="margin-top:15px;">
                                Register
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