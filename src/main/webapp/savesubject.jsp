<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.subject.dao.*" %>
    <%@ page import="com.subject.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Subject s=new Subject();
s.setId(request.getParameter("id"));
s.setName(request.getParameter("name"));
SubjectDAO dao=new SubjectDAO();
int row=dao.insertsubject(s);
if(row>0){
	out.print("Subject Added successfully");
}
else{
	out.print("Failed");
}
%>
<br>
<h2>Add Another Subject</h2>
<a href="insertsubject.jsp">Click here</a>
<br>
<h2>See the List</h2>
<a href="retrievesubject.jsp">Click here</a>
</body>
</html>