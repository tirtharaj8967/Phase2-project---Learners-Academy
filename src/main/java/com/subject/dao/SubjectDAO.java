package com.subject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBUtil;
import com.subject.pojo.Subject;

public class SubjectDAO 
{

	//insert

	public int insertsubject(Subject s) throws SQLException, ClassNotFoundException
		{	
		Connection con = DBUtil.getcon();
		String sql = "insert into subject values(?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getName());
		return ps.executeUpdate();
}
	//retrieve

	public List<Subject> getallsubjects() throws ClassNotFoundException, SQLException
	{
		ArrayList<Subject> list=new ArrayList<>();
		Connection con=DBUtil.getcon();
		String sql="select * from subject";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) 
		{
			Subject t=new Subject();
			t.setId(rs.getString(1));
			t.setName(rs.getString(2));
			list.add(t);
		}
		return list;
	}
	
	//UPDATE
	
	public int updatesubject(Subject t) throws SQLException, ClassNotFoundException
			{
				Connection con = DBUtil.getcon();
				String sql = "update subject set subid=? where subname=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1,t.getId());
				ps.setString(2,t.getName());
				return ps.executeUpdate();
			}
		
	//delete
			
public int deleteteacher(Subject t) throws ClassNotFoundException, SQLException
			{
				Connection con = DBUtil.getcon();
				String sql ="delete from subject where subname=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1,t.getName());
				return ps.executeUpdate();
				
			}



}
