<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file = "menu.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="viewCreateLeadPage">Create New Lead</a>
<h2>LIST OF ALL LEADS</h2>
<table>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email Id</th>
<th>Mobile Number</th>
<th>Source</th>
<th>Delete</th>
<th>Update</th>
</tr>
<c:forEach items="${leads }" var="lead">
<tr>
<td><a href="leadInfo?id=${lead.id }">${lead.firstName }</a></td>
<td>${lead.lastName }</td>
<td>${lead.email }</td>
<td>${lead.mobile }</td>
<td>${lead.source }</td>
<td><a href="delete?id=${lead.id }">delete</a></td>
<td><a href="update?id=${lead.id }">update</a></td>
</tr>

</c:forEach>
</table>
</body>
</html>