<!-- add.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
</head>
<body>

<h2>Add Student</h2>

<form action="<c:url value='/students/add'/>" method="post">
    <label for="name">Student Name:</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="percentage">Student percentage:</label>
    <input type="text" id="percentage" name="percentage" required>
    <br>
    <label for="branch">Email:</label>
    <input type="text" id="branch" name="branch" required>
    <br>
    <button type="submit">Add Student</button>
</form>

</body>
</html>
