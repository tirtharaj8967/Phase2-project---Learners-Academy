package com.student.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBUtil;
import com.student.pojo.Student;


public class StudentDAO 
{
	//insert
	
		public int insertstudent(Student s) throws SQLException, ClassNotFoundException
	{	
		Connection con = DBUtil.getcon();
		String sql = "insert into student values(?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getName());
		ps.setString(3,s.getAddress());
		ps.setString(4,s.getContact());
		ps.setString(5,s.getClasses());
		return ps.executeUpdate();
	}
	//retrieve
	
		public List<Student> getallstudents() throws ClassNotFoundException, SQLException
			{
				ArrayList<Student> list=new ArrayList<>();
				Connection con=DBUtil.getcon();
				String sql="select * from student";
				PreparedStatement ps=con.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) 
				{
					Student s=new Student();
					s.setId(rs.getString(1));
					s.setName(rs.getString(2));
					s.setAddress(rs.getString(3));
					s.setContact(rs.getString(4));
					s.setClasses(rs.getString(5));
					list.add(s);
				}
				return list;
			}
			
			//update
			
		public int update(Student s) throws SQLException, ClassNotFoundException
					{
						Connection con = DBUtil.getcon();
						String sql = "update student set sid=?, saddress=?, scontact=?,class=? where sname=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setString(1,s.getId());
						ps.setString(5,s.getName());
						ps.setString(2,s.getAddress());
						ps.setString(3,s.getContact());
						ps.setString(4,s.getClasses());
						return ps.executeUpdate();
					}
		
			//delete
					
		public int delete(Student s) throws ClassNotFoundException, SQLException
					{
						Connection con = DBUtil.getcon();
						String sql ="delete from student where sname=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setString(1,s.getName());
						return ps.executeUpdate();
						
					}


}
