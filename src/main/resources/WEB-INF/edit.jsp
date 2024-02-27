<!-- edit.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>

<h2>Edit Student</h2>

<form action="<c:url value='/students/update/'/>${student.id}" method="post">
    <label for="name">Full name:</label>
    <input type="text" id="name" name="name" value="${student.name}" required>
    <br>
    <label for="percentage">Last Name:</label>
    <input type="text" id="percentage" name="percentage" value="${student.percentage}" required>
    <br>
    <label for="branch">Email:</label>
    <input type="text" id="branch" name="branch" value="${student.branch}" required>
    <br>
    <button type="submit">Update Student</button>
</form>

</body>
</html>
