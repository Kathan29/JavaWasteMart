<%@page import="com.model.CustomerModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Book Services</title>   
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet" /> <!-- https://fonts.google.com/specimen/Open+Sans?selection.family=Open+Sans -->
    <link href="css/all.min.css" rel="stylesheet" /> <!-- https://fontawesome.com/ -->
    <link href="slick/slick.css" rel="stylesheet" /> <!-- https://kenwheeler.github.io/slick/ -->
    <link href="slick/slick-theme.css" rel="stylesheet" />
	<link href="css/bootstrap.min.css" rel="stylesheet" /> <!-- https://getbootstrap.com -->
	<link href="css/templatemo-new-vision.css" rel="stylesheet" />
	<script type="text/javascript">
	
	function gettotal()
	{
		var price=document.vinform.price.value;
		var qty=document.vinform.qty.value;
		
		document.vinform.total.value=(price*qty);
		//alert(price*qty);
	}
	
	</script>
</head>
<body>
<%
CustomerModel model=null;
if(session.getAttribute("model")!=null)
{
	model=(CustomerModel)session.getAttribute("model");
}
else
{
	response.sendRedirect("services.jsp");
}
%>
<%@ include file="header2.jsp" %>
 <br><br><br>
 <div class="row">
                    <div class="col-12">
                        <h2 class="tm-section-header tm-header-floating">Book Services</h2>         
                    </div>
                </div>
<div class="row tm-welcome-row">
                    <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form name="vinform" method="post" action="./CustomerServices"  >
                            <div class="form-group">
                              <input type="text" name="name" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=model.getName()%>"/>
                            </div>
                    
                            <div class="form-group">
                              <textarea rows="4"  name="address" class="form-control rounded-0 border-top-0 border-right-0 border-left-0"><%=model.getAddress() %></textarea>
                            </div>
                            <div class="form-group">
                               <label>Zone</label>
                  <select name="zone" class="form-control select2" style="width: 100%;" >
                    <option selected="selected" value = "north">north</option>
                    
                    <option value="south">south</option>
                    <option  value="east">east</option>
                    <option  value="west">west</option>
                    </select>
                    </div>
                            <div class="form-group">
                              <input type="text" name="pincode" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="pincode" required>
                            </div>
                             <div class="form-group">
                              <input type="text"  name="mobno" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=model.getMobno()%>"/>
                            </div>
                           
                            <div class="form-group">
                              <input type="text" disabled="disabled"  name="price" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=Integer.parseInt(request.getParameter("price"))%>"/>
                            </div>
                           
                             <div class="form-group">
                               <label>Quantity</label>
                  <select name="qty" class="form-control select2" style="width: 100%;" onchange="gettotal()">
                    <option selected="selected">1</option>
                    
                    <option value="2">2</option>
                    <option  value="3">3</option>
                    <option  value="4">4</option>
                    <option  value="5">5</option>
                    <option value="6">6</option>
                    <option  value="7">7</option>
                    <option  value="8">8</option>
                    <option  value="9">9</option>
                    <option  value="10">10</option>
                    
                  </select>
                            </div>
                           <div class="form-group">
                           <label>Total</label>
                              <input type="text"  name="total" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" />
                            </div>
                            
                             <div class="form-group">
                              <input type="text"disabled="disabled" name="servicename" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=request.getParameter("servicename")%>"/>
                            </div>
                            <div class="form-group">
                              <input type="hidden"  name="serviceid" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" value="<%=Integer.parseInt(request.getParameter("serviceid"))%>"/>
                            </div>
                           
             <div class="form-group mb-0">
                              <button type="submit" >
                               Book
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