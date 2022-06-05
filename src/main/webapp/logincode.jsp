<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
if(user.equals(pwd)) {
	Cookie c=new Cookie("userid",user);
	response.addCookie(c);
	
	out.print("logged in successfully");
	response.sendRedirect("clist.jsp");
	return;
}
else {
	out.print("check the credentials");
}
%>
</body>
</html>