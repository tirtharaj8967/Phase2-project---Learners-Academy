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
Classes t=new Classes();
ClassesDAO dao=new ClassesDAO();
t.setId(request.getParameter("id"));
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