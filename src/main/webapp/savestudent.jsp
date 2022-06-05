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
int row=dao.insertstudent(s);
if(row>0){
	out.print("Student Added successfully");
}
else{
	out.print("Failed");
}
%>
<br>
<a href="insertstudent.jsp">Add Another Student</a>
</body>
</html>