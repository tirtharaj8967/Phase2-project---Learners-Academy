<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.subteach.dao.*" %>
    <%@ page import="com.subteach.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Subteach s=new Subteach();
SubteachDAO dao=new SubteachDAO();
s.setId(request.getParameter("id"));
int row=dao.deletesubteach(s);
if(row>0){
	out.print("deleted successfully");
}
else{
	out.print("deletion failed");
}
%>
</body>
</html>