package com.dbcon;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil 
{
	final static String DRIVER_CLASS="com.mysql.jdbc.Driver";
	final static String DB_URL="jdbc:mysql://localhost:3306/learners_academy";
	final static String USER_NAME="root";
	final static String PASSWORD="root";

	public static Connection getcon() throws ClassNotFoundException, SQLException 
	{
		
		Class.forName(DRIVER_CLASS);
		
		Connection con = DriverManager.getConnection(DB_URL,USER_NAME,PASSWORD);
		return con;
}
}