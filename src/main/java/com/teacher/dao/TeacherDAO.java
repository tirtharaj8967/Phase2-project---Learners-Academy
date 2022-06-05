package com.teacher.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBUtil;
import com.teacher.pojo.Teacher;

public class TeacherDAO 
{
				//insert
	
						public int insertteacher(Teacher s) throws SQLException, ClassNotFoundException
		{	
			Connection con = DBUtil.getcon();
			String sql = "insert into teacher values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,s.getId());
			ps.setString(2,s.getName());
			ps.setString(3,s.getAddress());
			ps.setString(4,s.getContact());
			ps.setString(5,s.getDesignation());
			return ps.executeUpdate();
		}
				//retrieve
		
						public List<Teacher> getallteachers() throws ClassNotFoundException, SQLException
				{
					ArrayList<Teacher> list=new ArrayList<>();
					Connection con=DBUtil.getcon();
					String sql="select * from teacher";
					PreparedStatement ps=con.prepareStatement(sql);
					ResultSet rs=ps.executeQuery();
					while(rs.next()) 
					{
						Teacher t=new Teacher();
						t.setId(rs.getString(1));
						t.setName(rs.getString(2));
						t.setAddress(rs.getString(3));
						t.setContact(rs.getString(4));
						t.setDesignation(rs.getString(5));
						list.add(t);
					}
					return list;
				}
				
				//UPDATE
				
						public int updateteacher(Teacher t) throws SQLException, ClassNotFoundException
						{
							Connection con = DBUtil.getcon();
							String sql = "update teacher set tid=?, taddress=?, tcontact=?,tdesig=? where tname=?";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1,t.getId());
							ps.setString(5,t.getName());
							ps.setString(2,t.getAddress());
							ps.setString(3,t.getContact());
							ps.setString(4,t.getDesignation());
							return ps.executeUpdate();
						}
					
				//delete
						
						public int deleteteacher(Teacher t) throws ClassNotFoundException, SQLException
						{
							Connection con = DBUtil.getcon();
							String sql ="delete from teacher where tname=?";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1,t.getName());
							return ps.executeUpdate();
							
						}



}
