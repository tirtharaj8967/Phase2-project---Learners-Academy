<%@page import="com.subteach.dao.SubteachDAO"%>
<%@page import="com.subteach.pojo.*" %>
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
<h1>List Of Subject and Teachers</h1>
<%
SubteachDAO dao=new SubteachDAO();
List<Subteach> list=dao.getallsubteach();
%>
<table border="1"> 
<tr><th>SNo.</th><th>Subject name</th><th>Teacher Name</th><th>Delete</th></tr>
<%for(Subteach ss:list){ %>
<tr><td><%=ss.getId() %></td><td><%=ss.getSname() %></td><td><%=ss.getTname()%></td><td><a href="deletesubteach.jsp">delete</a></td></tr>
<%}%>
</table>

<form action="insertsubteach.jsp">
<input type="submit" value="Add Subject and Teacher">
</body>
</html>