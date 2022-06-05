<%@page import="com.classes.dao.ClassesDAO"%>
<%@page import="com.classes.pojo.*" %>
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
<h1>List Of all Claases</h1>
<%
ClassesDAO dao=new ClassesDAO();
List<Classes> list=dao.getallclasses();
%>
<table border="1"> 
<tr><th>Class id</th><th>Class name</th><th>Edit</th><th>Subject&Teacher</th><th>Class Report</th><th>Delete</th></tr>
<%for(Classes ss:list){ %>
<tr><td><%=ss.getId() %></td><td><%=ss.getName() %></td><td><a href="editclass.jsp">edit</a></td><td><a href="retrievesubteach.jsp">Subject&Teacher</a></td><td><a href="retrieveclsrepo.jsp">Class Report</a></td><td><a href="deleteclass.jsp">delete</a></td></tr>
<%}%>
</table>
<br>
<form action="insertclass.jsp">
<input type="submit" value="Add new Class">
</body>
</html>