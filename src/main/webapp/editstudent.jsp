<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Edit the Student</h1>
<h2>Enter the Student Details to update</h2>
<form action = "updatestudent.jsp">
Studentid<input type="text" name="id">
<br>
Studentname<input type="text" name="name">
<br>
Address<input type="text" name="address">
<br>
Contact<input type="text" name="contact">
<br>
Class<input type="text" name="classes">
<br>
<input type="submit" value="update">
</body>
</html>