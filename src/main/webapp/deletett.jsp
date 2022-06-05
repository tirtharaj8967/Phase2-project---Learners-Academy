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
TeacherDAO dao=new TeacherDAO();
t.setName(request.getParameter("name"));
int row=dao.deleteteacher(t);
if(row>0){
	out.print("deleted successfully");
}
else{
	out.print("deletion failed");
}
%>

<h2>see the list</h2>
<form action="retrieveteacher.jsp">
<input type= "submit" value="list">
</form>
</body>
</html>