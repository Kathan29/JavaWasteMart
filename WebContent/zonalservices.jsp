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
            <div class="card" style="width:1000px">
              <div class="card-header">
                <h3 class="card-title">Manage table</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 10px">BID</th>
                      <th>Service ID</th>
                     <th>Pincode</th>
                     <th>Total</th>
                     <th>Customer Name</th>
                     <th>Mobile No</th>
                     <th>Address</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                  <%
                  Connection cn = new DBUtil().getConnectionData();
                                    String qry = "select * from bookservices where status=? and zone=? ";
                                    PreparedStatement st = cn.prepareStatement(qry);
                                    st.setString(1, "Approved");
                                    st.setString(2, model.getZone());
                                    ResultSet rs = st.executeQuery();
                                    while(rs.next())
                                    {
                  %>
                    <tr>
                      <td><%= rs.getInt(1) %></td>
                      <td><%= rs.getInt(2) %></td>
                      <td><%=rs.getInt("pincode") %></td>
                      <td><%=rs.getFloat("total") %></td>
                      <td><%=rs.getString("cname")%> </td>
                       <td><%=rs.getString("mobno")%></td>
                        <td><%=rs.getString("address")%></td>
                       <td>
                      <a href="confirmservices.jsp?zid=<%=model.getZid()%>&serviceid=<%=rs.getInt(2)%>&bid=<%=rs.getInt(1)%>" > 
                      
                       Confirm</a></td>
                        
                      <%--  <td>
                     <a href="../Admin_UpdateServices?serviceid=<%=rs.getInt(1)%>&action=delete" class="btn btn-block btn-secondary">Delete</a>
                       
                      </td> --%>
                     
                    </tr>
                   <% } cn.close();%>
                        
                  </tbody>
                </table>
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