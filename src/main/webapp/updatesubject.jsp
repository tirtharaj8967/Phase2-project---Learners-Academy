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
int row=dao.updatesubject(s);
if(row>0){
	out.print("update is successfull");
}
else{
	out.print("update is failed");
}
%>
</body>
</html>