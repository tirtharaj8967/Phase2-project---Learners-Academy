package com.classes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBUtil;
import com.classes.pojo.Classes;

public class ClassesDAO 
{

	//insert

	public int insertclasses(Classes s) throws SQLException, ClassNotFoundException
		{	
		Connection con = DBUtil.getcon();
		String sql = "insert into classes values(?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getName());
		return ps.executeUpdate();
}
	//retrieve

	public List<Classes> getallclasses() throws ClassNotFoundException, SQLException
	{
		ArrayList<Classes> list=new ArrayList<>();
		Connection con=DBUtil.getcon();
		String sql="select * from classes";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) 
		{
			Classes t=new Classes();
			t.setId(rs.getString(1));
			t.setName(rs.getString(2));
			list.add(t);
		}
		return list;
	}
	
	//UPDATE
	
	public int updateclasses(Classes t) throws SQLException, ClassNotFoundException
			{
				Connection con = DBUtil.getcon();
				String sql = "update classes set clasname=? where clsid=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(2,t.getId());
				ps.setString(1,t.getName());
				return ps.executeUpdate();
			}
		
	//delete
			
public int deleteteacher(Classes t) throws ClassNotFoundException, SQLException
			{
				Connection con = DBUtil.getcon();
				String sql ="delete from classes where Clsid=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1,t.getId());
				return ps.executeUpdate();
				
			}




}
