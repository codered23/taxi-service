<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Update</title>
</head>
<body>
<h1 class="table_dark">Update manufacturer:</h1>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/update?id=${manufacturer.id}">
    <table border="1" class="table_dark">
        <tr>
            <th>Name</th>
            <th>Country</th>
            <th>Update</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="name" form="manufacturer" required>
            </td>
            <td>
                <input type="text" name="country" form="manufacturer" required>
            </td>
            <td>
                <input type="submit" name="update" form="manufacturer">
            </td>
        </tr>
    </table>
    <input type="hidden" name="id" value="${manufacturer.id}">
</form>
</body>
</html>