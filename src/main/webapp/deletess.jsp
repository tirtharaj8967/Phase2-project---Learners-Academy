<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.student.dao.*" %>
    <%@ page import="com.student.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Student s=new Student();
StudentDAO dao=new StudentDAO();
s.setName(request.getParameter("name"));
int row=dao.delete(s);
if(row>0){
	out.print("deleted successfully");
}
else{
	out.print("deletion failed");
}
%>
<form action="retrievestudent.jsp">
<input type= "submit" value="list">
</body>
</html>