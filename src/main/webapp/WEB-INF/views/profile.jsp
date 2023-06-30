<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/profile.css' %>
</style>
<html>
<head>
    <title>Driver Profile</title>
</head>
<body>
<h1 class="table_dark">Driver Profile</h1>
<table border="1" class="table_dark">
    <tr>
        <td colspan="2">
            <img src="path/to/driver/profile/image.jpg" alt="Driver profile picture">
        </td>
    </tr>
    <tr>
        <th>id</th>
        <td><c:out value="${driver.id}"/></td>
        <th>Name</th>
        <td><c:out value="${driver.name}"/></td>
        <th>License Number</th>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <th>Login</th>
        <td><c:out value="${driver.login}"/></td>
    </tr>
    <tr>
       <th>CarsByDriver</th>
    </tr>
    <c:forEach var="car" items="${cars}">
    <tr>
        <th>id</th>
        <td>
            <c:out value="${car.id}"/>
        </td>
        <th>Model</th>
        <td>
            <c:out value="${car.model}"/>
        </td>
        <th>Manufacturer name</th>
        <td>
            <c:out value="${car.manufacturer.name}"/>
        </td>
        <th>Manufacturer country</th>
        <td>
            <c:out value="${car.manufacturer.country}"/>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>