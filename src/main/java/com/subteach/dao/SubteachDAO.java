package com.subteach.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBUtil;
import com.subteach.pojo.Subteach;

public class SubteachDAO 
{
	//insert
	
			public int insertsubteach(Subteach s) throws SQLException, ClassNotFoundException
		{	
			Connection con = DBUtil.getcon();
			String sql = "insert into subteach values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,s.getId());
			ps.setString(2,s.getSname());
			ps.setString(3,s.getTname());
			return ps.executeUpdate();
		}
		//retrieve
		
			public List<Subteach> getallsubteach() throws ClassNotFoundException, SQLException
				{
					ArrayList<Subteach> list=new ArrayList<>();
					Connection con=DBUtil.getcon();
					String sql="select * from subteach";
					PreparedStatement ps=con.prepareStatement(sql);
					ResultSet rs=ps.executeQuery();
					while(rs.next()) 
					{
						Subteach s=new Subteach();
						s.setId(rs.getString(1));
						s.setSname(rs.getString(2));
						s.setTname(rs.getString(3));
						list.add(s);
					}
					return list;
				}
			
				//delete
						
			public int deletesubteach(Subteach s) throws ClassNotFoundException, SQLException
						{
							Connection con = DBUtil.getcon();
							String sql ="delete from subteach where sno=?";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1,s.getId());
							return ps.executeUpdate();
							
						}

}
