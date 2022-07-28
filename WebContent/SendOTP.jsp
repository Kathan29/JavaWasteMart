<%@page import="com.model.ForgotPasswordModel"%>

<%@page import="com.dao.ForgotDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=null;
if(session.getAttribute("otp")==null) 
{
response.sendRedirect("forgotpassword.jsp");
}
else	
{
	ForgotPasswordModel f=(ForgotPasswordModel)session.getAttribute("UserData");
	email=f.getEmail();
}
%>
<form action="ForgotController" method="post">
<label>OTP Send On Email Address &emsp;<%=email%></label>
<br>
<input type="text" name="EnterOTP" >
<input type="submit" name="action" value="Verify">
${notmatch }
</form>
</body>
</html>