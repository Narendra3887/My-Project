<%@page import="com.jspiders.springmvc.DTO.StudentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% StudentDTO students = (StudentDTO) request.getAttribute("Students"); %>
    <%!int i;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
	margin-top: 10px;
}
form table {
	margin: auto;
	width: auto;
}
tr {
	text-align: center;
}
fieldset table {
	margin: auto;
	text-align: left;
}
fieldset {
	margin: 15px 520px;
	text-align: center;
}
legend {
	color: white;
	background-color: #333;
}
body {
	background-image:
		url('https://cdn.pixabay.com/photo/2022/05/21/09/30/cat-7211080_960_720.jpg');
	background-size: 100%;
}
</style>
</head>
<body>
<%
	if (students != null) {
	%>
	<table style="width: 50%; margin-left: 370px; color: white;">
		<tr>
			<td><h3>ID</h3></td>
			<td><h3>Name</h3></td>
			<td><h3>Email</h3></td>
			<td><h3>UserName</h3></td>
			<td><h3>Password</h3></td>
		</tr>
		
		<tr>
			<td><%=students.getId()%></td>
			<td><%=students.getName()%></td>
			<td><%=students.getEmail()%></td>
			<td><%=students.getUserName()%></td>
			<td><%=students.getPassword()%></td>
		</tr>

		<%
		}else{
		%>


   <fieldset>
<legend>:::Enter Id For Search Student:::</legend>
<form method="post" action="./searchStudent">
<table>
				<tr>
					<td><label>Enter Student ID</label></td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="SELECT"></td>
				</tr>
			</table>
</form>
</fieldset>

<%} %>
	

	
	
	
</body>
</html>