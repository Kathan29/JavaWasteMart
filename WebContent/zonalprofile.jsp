<%@page import="com.model.ZonalModel"%>
<%@page import="com.model.CustomerModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Waste Mart</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet" /> <!-- https://fonts.google.com/specimen/Open+Sans?selection.family=Open+Sans -->
    <link href="css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="slick/slick.css" rel="stylesheet" /> <!-- https://kenwheeler.github.io/slick/ -->
    <link href="slick/slick-theme.css" rel="stylesheet" />
	<link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com -->
	<link href="css/templatemo-new-vision.css" rel="stylesheet" />
<body>
<%
ZonalModel model=null;
if(session.getAttribute("model")!=null)
{
	 model=(ZonalModel)session.getAttribute("model");
}
else
{
	response.sendRedirect("zonallogin.jsp");
}


%>
<%@ include file="header3.jsp" %>
 <div class="row">
                    <div class="col-12" style="display:flex; justify-content:center">
                        <h2 class="tm-section-header tm-header-floating">Zonal Profile</h2>         
                    </div>
                </div>
<div class="row tm-welcome-row" style="display:flex; justify-content:center">
                    <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form method="post" action="CustomerProfile" >
                            <div class="form-group">
                              <input type="text" name="name" class="form-control rounded-0 border-top-0 border-right-0 border-left-0 " value="<%=model.getName()%>"   />
                            </div>
                    <div class="form-group">
                              <input type="email" name="email" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=model.getEmail() %>"  />
                            </div>
                            <div class="form-group">
                          Gender : <% if(model.getGender().equals("male"))
                           {
                        	  %>
                              <input type="radio"  name="gender" checked="checked" value="male" />Male
                              <input type="radio"  name="gender" value="female"/>Female
                              <%} else { %>
                              <input type="radio"  name="gender"  value="male" />Male
                               <input type="radio"  name="gender" checked="checked" value="female"/>Female
                              <% } %>
                            </div>
                            <div class="form-group">
                              <input type="text" name="zone" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=model.getZone() %>" />
                            </div>
                            
                             <div class="form-group">
                              <input type="text"  name="mobno" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=model.getMobno() %>"  />
                            </div>
                             
                             <%--  <input type="hidden"  name="zid" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=model.getZid()%>"  />
                           
                      <div class="form-group mb-0">
                              <button type="submit" value="update" >
                               Update
                              </button>
                            </div> --%>
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