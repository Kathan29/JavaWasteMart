<!DOCTYPE html>
<%@page import="com.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>


<%@page import="java.sql.Connection"%>
<%@page import="com.model.CustomerModel"%>
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
</head>
<body>


<%
if(session.getAttribute("model")!=null)
{
	CustomerModel model=(CustomerModel)session.getAttribute("model");
}
else
{
	response.sendRedirect("login.jsp");
}
%>
 <%@ include file="header2.jsp" %>
 <br/><br/>
 <div id="servicepage">
  <div class="row">
                    <div class="col-12">
                        <h2 class="tm-section-header tm-section-header-small mb-5">Our services for you</h2>        
                    </div>
                </div>
                <%
                Connection cn = new DBUtil().getConnectionData();
                                  String qry = "select * from services";
                                  PreparedStatement st = cn.prepareStatement(qry);
                                  ResultSet rs = st.executeQuery();
                                  while(rs.next())
                                  {
                %>
                <div class="row tm-approach-row">
                    <div class="col-12">
                         <div class="tm-approach-box">
                            <div class="tm-media tm-media-2 tm-media-v-center tm-solid-border">
                                <i class="fab fa-4x fa-acquisitions-incorporated tm-service-icon"></i>
                                <div>
                                  <h2>Service: <%= rs.getString(2) %></h2>
                                 <br>
                                 
                                <h1> Price: <%= rs.getInt(3)%></h1>
                                  <br>
                                  <div class="btn btn-block btn-warning"><a href="bookservices.jsp?serviceid=<%=rs.getInt(1)%>&price=<%=rs.getInt(3)%>&servicename=<%=rs.getString(2)%>">Book now</a> </div>
                                </div>
                                </div>
                            </div>        
                        </div>
                    <%} cn.close(); %>
                    </div>
                    </div>
 <%@ include file="footer.jsp" %>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="slick/slick.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>