<%@page import="com.jspiders.springmvc.DTO.StudentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%    List<StudentDTO> students = (List<StudentDTO>) request.getAttribute("Students");
		 String msg = (String) request.getAttribute("msg");
 StudentDTO student = (StudentDTO) request.getAttribute("student");
%>
<%!int i;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
</head>
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
	width: 300px;
}
legend {
	color: white;
	background-color: #333;
}
body {
	background-image:
		url('https://cdn.pixabay.com/photo/2020/12/05/04/54/spill-5805062_960_720.jpg');
	background-size: 100%;
}
</style>
<body>
<%
if(student!=null){
%>
<fieldset>
<legend> :::Update Student::: </legend>
<form method="post" action="./updateStudentData">
<table>
				<tr hidden="true">
					<td><input type="text" name="id" value="<%=student.getId()%>"></td>
				</tr>
				<tr>
					<td><label>Name</label></td>
					<td><input type="text" name="name" value="<%=student.getName()%>"></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input type="text" name="email" value="<%=student.getEmail()%>"></td>
				</tr>
				<tr>
					<td><label>UserName</label></td>
					<td><input type="text" name="userName" value="<%=student.getUserName()%>"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="text" name="password" value="<%=student.getPassword()%>"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update"></td>
				</tr>
			</table>
</form>
</fieldset>
<%}
else{
%>
<fieldset>
		<legend>::: Select Student Id For Update Student :::</legend>
		<form method="post" action="./updateStudent">
			<table>
				<tr>
					<td><label>Enter Student ID</label></td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (msg != null) {
	%>
	<h3 style="color: white; margin-left: 570px;"><%=msg%></h3>
	<%} %>
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
		<%
		for (i = 0; i < students.size(); i++) {
		%>
		<tr>
			<td><%=students.get(i).getId()%></td>
			<td><%=students.get(i).getName()%></td>
			<td><%=students.get(i).getEmail()%></td>
			<td><%=students.get(i).getUserName()%></td>
			<td><%=students.get(i).getPassword()%></td>
		</tr>

		<%
		}
		%>

	</table>

	<%
	}
	%>
	<%} %>
	
</body>
</html>