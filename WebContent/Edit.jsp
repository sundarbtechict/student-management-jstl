<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.sundar.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./plugins/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="./plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="./plugins/jquery.2.2.3.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center" style="color: #000080;">
		<h2>Student Management</h2>
	</div>
	<form class="form-inline" action="./edit1" method="POST">
		<table class="table table-striped">
			<tr>
				<th>Register no:</th>
				<td><input type="text" class="form-inline" name="regno"
					value=<c:out value="${st.getRegNo()}"/> readonly></td>
			</tr>
			<tr>
				<th>Name:</th>
				<td><input type="text" class="form-inline" name="name"
					value=<c:out value="${st.getName()}"/>></td>
			</tr>
			<tr>
				<th>Date of Birth:</th>
				<td><input type="date" class="form-inline" name="dob"
					value=<c:out value="${st.getDob()}"/>></td>
			</tr>
			<tr>
				<th>Department:</th>
				<td><input type="text" class="form-inline" name="dept"
					value=<c:out value="${st.getDept()}"/>></td>
			</tr>
			<tr>
				<th>Email:</th>
				<td><input type="text" class="form-inline" name="email"
					value=<c:out value="${st.getEmail()}"/>></td>
			</tr>
			<tr>
				<th>Mobile:</th>
				<td><input type="text" class="form-inline" name="mobile"
					value=<c:out value="${st.getMobile()}"/>></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-info" value="Update"></td>
			</tr>
		</table>
	</form>
	<a href="./Index.jsp">back</a>

</body>
</html>