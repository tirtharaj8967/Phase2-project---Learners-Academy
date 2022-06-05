<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.teacher.dao.*" %>
    <%@ page import="com.teacher.pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Teacher t=new Teacher();
t.setId(request.getParameter("id"));
t.setName(request.getParameter("name"));
t.setAddress(request.getParameter("address"));
t.setContact(request.getParameter("contact"));
t.setDesignation(request.getParameter("designation"));
TeacherDAO dao=new TeacherDAO();
int row=dao.updateteacher(t);
if(row>0){
	out.print("update is successfull");
}
else{
	out.print("update is failed");
}
%>
<h2>see the list</h2>
<form action="retrieveteacher.jsp">
<input type= "submit" value="list">
</form>
</body>
</html>