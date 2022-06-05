<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.clsrepo.dao.*" %>
    <%@ page import="com.clsrepo.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Clsrepo s=new Clsrepo();
ClsrepoDAO dao=new ClsrepoDAO();
s.setId(request.getParameter("id"));
int row=dao.deleteclsrepo(s);
if(row>0){
	out.print("deleted successfully");
}
else{
	out.print("deletion failed");
}
%>
</body>
</html>