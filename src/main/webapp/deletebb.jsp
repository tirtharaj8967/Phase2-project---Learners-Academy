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
Subject t=new Subject();
SubjectDAO dao=new SubjectDAO();
t.setName(request.getParameter("name"));
int row=dao.deleteteacher(t);
if(row>0){
	out.print("deleted successfully");
}
else{
	out.print("deletion failed");
}
%>
</body>
</html>