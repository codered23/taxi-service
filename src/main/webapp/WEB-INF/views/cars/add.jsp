<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add">
    <h1 class="table_dark">Add car:</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Model</th>
            <th>Manufacturer ID</th>
            <th>Add</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="model" required>
            </td>
            <td>
                <input type="number" name="manufacturer_id" required>
            </td>
            <td>
                <input type="submit" name="add">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
