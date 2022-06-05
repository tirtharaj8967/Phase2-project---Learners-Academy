<%@page import="com.student.dao.StudentDAO"%>
<%@page import="com.student.pojo.*" %>
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
<h1>List Of Students</h1>
<%
StudentDAO dao=new StudentDAO();
List<Student> list=dao.getallstudents();
%>
<table border="1"> 
<tr><th>Studentid</th><th>Studentname</th><th>Address</th><th>Contact</th><th>Class</th><th>Edit</th><th>Delete</th></tr>
<%for(Student ss:list){ %>
<tr><td><%=ss.getId() %></td><td><%=ss.getName() %></td><td><%=ss.getAddress()%></td><td><%=ss.getContact()%></td><td><%=ss.getClasses()%></td><td><a href="editstudent.jsp">edit</</a></td><td><a href="deletestudent.jsp">delete</a></td></tr>
<%}%>
</table>

<form action="insertstudent.jsp">
<input type="submit" value="Add Student">
</form>
</body>
</html>