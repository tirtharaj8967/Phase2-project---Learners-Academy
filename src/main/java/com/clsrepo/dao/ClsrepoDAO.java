package com.clsrepo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dbcon.DBUtil;
import com.clsrepo.pojo.Clsrepo;

		public class ClsrepoDAO 
		{
			//insert
			
			public int insertclsrepo(Clsrepo s) throws SQLException, ClassNotFoundException
		{	
			Connection con = DBUtil.getcon();
			String sql = "insert into classreport values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,s.getId());
			ps.setString(2,s.getStname());
			ps.setString(3,s.getTname());
			return ps.executeUpdate();
		}
			//retrieve
			
			public List<Clsrepo> getallclsrepo() throws ClassNotFoundException, SQLException
				{
					ArrayList<Clsrepo> list=new ArrayList<>();
					Connection con=DBUtil.getcon();
					String sql="select * from classreport";
					PreparedStatement ps=con.prepareStatement(sql);
					ResultSet rs=ps.executeQuery();
					while(rs.next()) 
					{
						Clsrepo s=new Clsrepo();
						s.setId(rs.getString(1));
						s.setStname(rs.getString(2));
						s.setTname(rs.getString(3));
						list.add(s);
					}
					return list;
				}
			//delete
			
			public int deleteclsrepo(Clsrepo s) throws ClassNotFoundException, SQLException
						{
							Connection con = DBUtil.getcon();
							String sql ="delete from classreport where cno=?";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1,s.getId());
							return ps.executeUpdate();
							
						}
		
		}
