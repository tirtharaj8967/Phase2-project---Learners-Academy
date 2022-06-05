<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.subteach.dao.*" %>
    <%@ page import="com.subteach.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Subteach s=new Subteach();
s.setId(request.getParameter("id"));
s.setSname(request.getParameter("sname"));
s.setTname(request.getParameter("tname"));
SubteachDAO dao=new SubteachDAO();
int row=dao.insertsubteach(s);
if(row>0){
	out.print("Added successfully");
}
else{
	out.print("Failed");
}
%>
<br>
<a href="insertsubteach.jsp">Add Another Student</a>
</body>
</html>