package com.controller;

import java.io.IOException;

import com.bean.employeeBean;
import com.dao.employeeDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class InsertEmployeeServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email"); 
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String title = request.getParameter("title");
		String department = request.getParameter("department");
		
		employeeBean e = new employeeBean(firstname, lastname, dob, phone, email, gender, address, title, department);
		
		employeeDao dao = new employeeDao();
		int rowsAffected = dao.InsertEmployees(e);
		RequestDispatcher rd = null;
		
		if (rowsAffected > 0) 
		{
			rd = request.getRequestDispatcher("ListEmployeeServlet");
		} 
		else 
		{	
			rd = request.getRequestDispatcher("employeeregistration.jsp");
		}
		rd.forward(request, response);
	}
}
