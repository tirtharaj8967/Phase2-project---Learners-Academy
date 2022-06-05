
<%@page import="com.subject.dao.SubjectDAO"%>
<%@page import="com.subject.pojo.*" %>
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
<h1>List Of Subjects</h1>
<%
SubjectDAO dao=new SubjectDAO();
List<Subject> list=dao.getallsubjects();
%>
<table border="1"> 
<tr><th>Subject id</th><th>Subject name</th><th>Edit</th><th>Delete</th></tr>
<%for(Subject ss:list){ %>
<tr><td><%=ss.getId() %></td><td><%=ss.getName() %></td><td><a href="editsubject.jsp">edit</</a></td><td><a href="deletesubject.jsp">delete</a></td></tr>
<%}%>
</table>

<form action="insertsubject.jsp">
<input type="submit" value="Add new Subject">

</body>
</html>