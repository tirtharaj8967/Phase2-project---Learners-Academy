<%@page import="com.teacher.dao.TeacherDAO"%>
<%@page import="com.teacher.pojo.*" %>
<%@page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List Of Teachers</h1>
<%
TeacherDAO dao=new TeacherDAO();
List<Teacher> list=dao.getallteachers();
%>
<table border="1"> 
<tr><th>Teacher id</th><th>Teacher name</th><th>Address</th><th>Contact</th><th>Designation</th><th>Edit</th><th>Delete</th></tr>
<%for(Teacher tt:list){ %>
<tr><td><%=tt.getId() %></td><td><%=tt.getName() %></td><td><%=tt.getAddress()%></td><td><%=tt.getContact()%></td><td><%=tt.getDesignation()%></td><td><a href="editteacher.jsp">edit</</a></td><td><a href="deleteteacher.jsp">delete</a></td></tr>
<%}%>
</table>

<form action="insertteacher.jsp">
<input type="submit" value="Add Teacher">
</body>
</html>