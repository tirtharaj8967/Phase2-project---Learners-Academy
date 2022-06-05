<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.student.dao.*" %>
    <%@ page import="com.student.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Student s=new Student();
s.setId(request.getParameter("id"));
s.setName(request.getParameter("name"));
s.setAddress(request.getParameter("address"));
s.setContact(request.getParameter("contact"));
s.setClasses(request.getParameter("classes"));
StudentDAO dao=new StudentDAO();
int row=dao.update(s);
if(row>0){
	out.print("update is successfull");
}
else{
	out.print("update is failed");
}
%>
</body>
</html>