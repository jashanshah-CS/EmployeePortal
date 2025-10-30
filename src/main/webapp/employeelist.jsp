<%@page import="com.bean.employeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>

<style>
  body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: #f9fafb;
    margin: 0;
    padding: 20px;
  }

  h1 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
  }

  table {
    width: 95%;
    margin: auto;
    border-collapse: collapse;
    background: #fff;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    border-radius: 10px;
    overflow: hidden;
  }

  th, td {
    padding: 12px 16px;
    text-align: left;
  }

  th {
    background: #4f46e5;
    color: #fff;
    font-weight: 600;
    text-transform: uppercase;
    font-size: 14px;
  }

  tr:nth-child(even) {
    background: #f3f4f6;
  }

  tr:hover {
    background: #e0e7ff;
    transition: 0.2s ease-in-out;
  }

  td {
    color: #333;
    border-bottom: 1px solid #e5e7eb;
  }

  tr:last-child td {
    border-bottom: none;
  }

  /* Button styles */
  .action-links a {
    text-decoration: none;
    padding: 6px 12px;
    margin-right: 6px;
    border-radius: 6px;
    font-weight: 600;
    font-size: 17px;
    color: #fff;
    transition: background 0.2s;
  }

  .edit {
    background-color: #16a34a;
  }

  .edit:hover {
    background-color: #15803d;
  }

  .delete {
    background-color: #dc2626;
  }

  .delete:hover {
    background-color: #b91c1c;
  }

  @media (max-width: 768px) {
    table {
      font-size: 13px;
    }
    th, td {
      padding: 8px;
    }
  }
</style>
</head>

<body>

  <h1>Employee List</h1>

  <table>
    <tr>
      <th>ID</th>
      <th>FirstName</th>
      <th>LastName</th>
      <th>DOB</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Gender</th>
      <th>Address</th>
      <th>Title</th>
      <th>Department</th> 
      <th colspan="2" style="font-size: 17px;"><center>Actions</center></th>
    </tr>

    <%
      ArrayList<employeeBean> list =  (ArrayList<employeeBean>) request.getAttribute("list");
      for(int i=0 ; i<list.size() ; i++)
      {
    		employeeBean e = list.get(i);
	 %>
      <tr>
      	<td><%= e.getId() %></td>
      	<td><%= e.getFirstname() %></td>
      	<td><%= e.getLastname()%></td>
      	<td><%= e.getDob() %></td>
      	<td><%= e.getPhone() %></td>
      	<td><%= e.getEmail() %></td>
      	<td><%= e.getGender() %></td>
      	<td><%= e.getAddress() %></td>
      	<td><%= e.getTitle() %></td>
      	<td><%= e.getDepartment() %></td>
        <td class="action-links">
          <a href="EditEmployeeServlet?id=<%=e.getId()%>" class="edit" style="padding-left: 20px; padding-right: 20px">Edit</a>
        </td>
        <td class="action-links">
                  <a href="DeleteEmployeeServlet?id=<%=e.getId()%>" class="delete" 
             onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
        </td>
        
      </tr>
    <%
      }
    %>
  </table>

</body>
</html>