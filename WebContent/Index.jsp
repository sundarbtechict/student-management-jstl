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
	<div class="container">
		<table class="table table-bordered">
			<tr>
				<th>Register no:</th>
				<th>Name:</th>
				<th>Date of Birth:</th>
				<th>Department:</th>
				<th>Email:</th>
				<th>Mobile:</th>
				<th>ACTION</th>
				<th>ACTION</th>
				<th>ACTION</th>
			</tr>
			<c:forEach items="${studentList}" var="st">
			<tr>
				<td><c:out value="${st.getRegNo()}"></c:out></td>
				<td><c:out value="${st.getName()}"></c:out></td>
				<td><c:out value="${st.getDob()}"></c:out></td>
				<td><c:out value="${st.getDept()}"></c:out></td>
				<td><c:out value="${st.getEmail()}"></c:out></td>
				<td><c:out value="${st.getMobile()}"></c:out></td>
				<td><a href="./read?regno=<c:out value="${st.getRegNo()}"></c:out>">View</a></td>
				<td><a href="./edit?regno=<c:out value="${st.getRegNo()}"></c:out>">Edit</a></td>
				<td><a href="./delete?regno=<c:out value="${st.getRegNo()}"></c:out>">Delete</a></td>
			</tr>
			</c:forEach>
			
		</table>
		<a href="./insert.html">create</a>
	</div>

</body>
</html>