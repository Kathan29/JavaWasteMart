<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.Connection"%>
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
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>View Services</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"></a></li>
              <li class="breadcrumb-item active">View Services</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card" style="width:1200px">
              <div class="card-header">
                <h3 class="card-title" >Manage table</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
              <form action="ZonalConfirm" method="post">
                <table class="table table-bordered">
                  <thead>                  
                   <tr>
                   <th>Zid</th>
                   <th>Serviceid</th>
                   <th>Book Id</th>
                   <th>Service Date</th>
                   <th>Time</th>
                   </tr> 
                  </thead>
                  <tbody>
                  <tr>
                  <td><input type="text" name="zid" value="<%=Integer.parseInt(request.getParameter("zid"))%>"></td>
                  <td><input type="text" name="serviceid" value="<%=Integer.parseInt(request.getParameter("serviceid"))%>"></td>
                  <td><input type="text" name="bid" value="<%=Integer.parseInt(request.getParameter("bid"))%>"></td>
                  <td><input type="text" name="date" placeholder="Enter date"></td>
                  <td><input type="text" name="time" placeholder="Enter time"></td>
                  
                  </tr>
                  <tr>
                  <td><input type="submit" value="submit"></td>
                  </tr>
                  </tbody>
                </table>
                </form>
              </div>
              </div>
              </div>
              </div>
              </div>
              </section>              
              </div>              

 
 <%@ include file="footer.jsp" %>
 <script src="js/jquery-3.4.1.min.js"></script>
    <script src="slick/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>