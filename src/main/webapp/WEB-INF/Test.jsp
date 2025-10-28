<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% out.print("welcome to jsp"); %>
<br>
Current Time: <%= java.util.Calendar.getInstance().getTime() %>  
<form action="welcome.jsp">  
<input type="text" name="uname"><br/>    
	<table border="10">
	<%
		int no = 5;
		for(int i=1 ; i<=10 ; i++)
		{
	%>
			<tr>
				<td><%= no %></td>
				<td><%= i %></td>
				<td><%= (no*i)%></td>
			</tr>
	<% 
		}
	%>
	</table>
	
</body>
</html>