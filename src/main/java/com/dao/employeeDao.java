package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.employeeBean;
import com.util.employeeUtil;

public class employeeDao 
{
	public static int InsertEmployees(employeeBean e) 
	{
		String insert = "INSERT INTO EMPLOYEES(firstname , lastname , date_of_birth , phone , email , gender , address , title , department) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ?)";
		Connection con = employeeUtil.DBConnection();
		int rows = 0;
		PreparedStatement stmt = null;
		if(con != null) 
		{
			try
			{
				stmt = con.prepareStatement(insert);
				
				stmt.setString(1, e.getFirstname());
				stmt.setString(2, e.getLastname());
				stmt.setString(3, e.getDob());
				stmt.setString(4, e.getPhone());
				stmt.setString(5, e.getEmail());
				stmt.setString(6, e.getGender());
				stmt.setString(7, e.getAddress());
				stmt.setString(8, e.getTitle());
				stmt.setString(9, e.getDepartment());
				
				rows = stmt.executeUpdate();
			}
			catch (SQLException e1) 
			{
				e1.printStackTrace();
			}
		}
		else 
		{
			System.out.println("Employee Did not INSERTED.");
		}
		return rows;
	}
	public static ArrayList<employeeBean> Employee_Records()
	{
		String select = "SELECT * FROM EMPLOYEES";
		Connection con = employeeUtil.DBConnection();
		ArrayList<employeeBean> list = new ArrayList<employeeBean>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		if(con != null) 
		{
			try 
			{
				stmt = con.prepareStatement(select);
				
				rs = stmt.executeQuery();
				
				while(rs.next()) 
				{
					int id = rs.getInt(1);
					String firstname = rs.getString(2);
					String lastname = rs.getString(3);
					String dob = rs.getString(4);
					String phone = rs.getString(5);
					String email = rs.getString(6);
					String gender = rs.getString(7);
					String address = rs.getString(8);
					String title = rs.getString(9);
					String department = rs.getString(10);
					employeeBean ebean = new employeeBean(id , firstname , lastname , dob , phone , gender , address , title , department);
					list.add(ebean);
				}
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return list;
	}
}
