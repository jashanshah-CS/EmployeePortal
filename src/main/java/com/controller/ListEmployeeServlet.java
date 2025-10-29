package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.bean.employeeBean;
import com.dao.employeeDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ListEmployeeServlet extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		
		employeeDao dao = new employeeDao();
		ArrayList<employeeBean> list = dao.Employee_Records();
		request.setAttribute("list", list);
		request.getRequestDispatcher("employeelist.jsp").forward(request, response);
	}
}
