<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 04.07.2023
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<body>
<h1>All Employees</h1>

<table>
    <tbody>
    <tr>
        <td>Name</td>
        <td>Surname</td>
        <td>Department</td>
        <td>Salary</td>
        <td>Actions</td>
    </tr>


    <c:forEach var="emp" items="${allEmployees}">
        <c:url var="updateBtn" value="/updateEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteBtn" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update" onclick="window.location.href='${updateBtn}'">
                <input type="button" value="Delete" onclick="window.location.href='${deleteBtn}'">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href='addNewEmployee'">
</body>
</html>
