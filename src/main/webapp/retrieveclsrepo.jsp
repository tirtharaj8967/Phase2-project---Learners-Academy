<%@page import="com.clsrepo.dao.ClsrepoDAO"%>
<%@page import="com.clsrepo.pojo.*" %>
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
<h1>List Of Student and Teachers</h1>
<%
ClsrepoDAO dao=new ClsrepoDAO();
List<Clsrepo> list=dao.getallclsrepo();
%>
<table border="1"> 
<tr><th>CNo.</th><th>Student name</th><th>Teacher Name</th><th>Delete</th></tr>
<%for(Clsrepo ss:list){ %>
<tr><td><%=ss.getId() %></td><td><%=ss.getStname() %></td><td><%=ss.getTname()%></td><td><a href="deleteclsrepo.jsp">delete</a></td></tr>
<%}%>
</table>

<form action="insertclsrepo.jsp">
<input type="submit" value="Add Subject and Teacher">
</body>
</html>