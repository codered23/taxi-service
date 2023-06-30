<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Update</title>
</head>
<body>
<h1 class="table_dark">Update car:</h1>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/update?id=${car.id}">
    <table border="1" class="table_dark">
        <tr>
            <th>Model</th>
            <th>Manufacturer id</th>
            <th>Update</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="model" form="car" required>
            </td>
            <td>
                <input type="number" name="manufacturer_id" form="car" required>
            </td>
            <td>
                <input type="submit" name="update" form="car">
            </td>
        </tr>
    </table>
    <input type="hidden" name="id" value="${car.id}">
</form>
</body>
</html>