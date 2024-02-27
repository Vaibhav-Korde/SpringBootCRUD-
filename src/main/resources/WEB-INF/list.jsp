<!-- list.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
</head>
<body>

<h2>Student List</h2>

<table border="1">
    <thead>
    <tr>
        <th>RolL NO</th>
        <th>Student Name</th>
        <th>Percentage</th>
        <th>Branch</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.percentage}</td>
            <td>${student.branch}</td>
            <td>
                <a href="<c:url value='/students/edit/'/>${student.id}">Edit</a>
                |
                <a href="<c:url value='/students/delete/'/>${student.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br>
<a href="<c:url value='/students/add'/>">Add New Student</a>

</body>
</html>
