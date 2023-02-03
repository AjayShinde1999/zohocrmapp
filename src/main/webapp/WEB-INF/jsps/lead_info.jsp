<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Info</title>
</head>
<body>
	<h2>Lead Details</h2>
	<table border='1'>
		<tr>
			<td>First Name</td>
			<td>${lead.firstName }</td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td>${lead.lastName }</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${lead.email }</td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td>${lead.mobile }</td>
		</tr>
		<tr>
			<td>Source</td>
			<td>${lead.source }</td>
		</tr>
	</table>
	<form action="sendEmail" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="email" value="${lead.email }" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Send Email" /></td>
			</tr>
		</table>
	</form>
	<form action="convertLead" method="post">
		<table>
			<tr>
				<td><input type="hidden" name="id" value="${lead.id }" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Convert" /></td>
			</tr>
		</table>
	</form>
</body>
</html>