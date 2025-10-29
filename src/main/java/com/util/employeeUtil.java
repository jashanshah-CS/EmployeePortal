package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class employeeUtil
{
	private static final String URLNAME = "jdbc:mysql://localhost:3306/jashandb";
	private static final String DRIVERCLASS = "com.mysql.cj.jdbc.Driver";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "root";
	
	@SuppressWarnings("unused")
	public static Connection DBConnection() 
	{
		Connection con = null;
		try 
		{
			Class.forName(DRIVERCLASS);
			
			try 
			{
				DriverManager.getConnection(URLNAME, USERNAME, PASSWORD);
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		
		if(con != null) 
		{
			System.out.println("Data Base Connected.");
		}
		else 
		{
			System.out.println("Data Base Not Connected.");
		}
		return con;
	}
}
