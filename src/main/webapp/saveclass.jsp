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
int row=dao.insertclasses(s);
if(row>0){
	out.print("Class Added successfully");
}
else{
	out.print("Failed");
}
%>
<br>
<h2>Add Another Subject</h2>
<a href="insertclass.jsp">Click here</a>
<br>
<h2>See the List</h2>
<a href="retrieveclass.jsp">Click here</a>
</body>
</html>