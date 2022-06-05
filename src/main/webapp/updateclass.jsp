<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.classes.dao.*" %>
    <%@ page import="com.classes.pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Classes s=new Classes();
s.setId(request.getParameter("id"));
s.setName(request.getParameter("name"));
ClassesDAO dao=new ClassesDAO();
int row=dao.updateclasses(s);
if(row>0){
	out.print("update is successfull");
}
else{
	out.print("update is failed");
}
%>
</body>
</html>