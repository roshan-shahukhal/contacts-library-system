<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.shahukhalroshan.model.Person"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contacts Library</title>
<link rel="stylesheet" href="css/bootstrap-min.css" type="text/css">
</head>
<body>
	<div class="container">
		<jsp:include page="header.html" />
		<a class="btn btn-success pull-right" href="addContact.jsp">Add Contact</a>
		<table class="table">
			<thead>
				<th>Firstname</th>
				<th>Lastname</th>
				<th>Mobile Number</th>
				<th>Address</th>
				<th>Email</th>
				<th>Action</th>
			</thead>
			<c:forEach var="person" items="${persons}" varStatus="rowCount">
				<c:if test="${person == null}">
					<tr>
						<td colspan="5">No Data Found !</td>
					</tr>
				</c:if>
				<tr>
					<td>${person.firstname}</td>
					<td>${person.lastname}</td>
					<td>${person.mobileNumber}</td>
					<td>${person.address}</td>
					<td>${person.email}</td>
					<th>
						<a class="btn btn-danger" href="list?p=delete&id=<c:out value="${rowCount.count}"/>">Delete</a>
						<a class="btn btn-warning" href="list?p=edit">Edit</a>
					</th>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>