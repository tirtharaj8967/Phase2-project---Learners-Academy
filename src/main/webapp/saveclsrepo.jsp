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
s.setId(request.getParameter("id"));
s.setStname(request.getParameter("stname"));
s.setTname(request.getParameter("tname"));
ClsrepoDAO dao=new ClsrepoDAO();
int row=dao.insertclsrepo(s);
if(row>0){
	out.print("Added successfully");
}
else{
	out.print("Failed");
}
%>
<br>
<a href="insertclsrepo.jsp">Add Another Class report</a>
</body>
</html>