<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #F5F5F5;
        }
        .header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
        }
        .table_light {
            width: 100%;
            border-collapse: collapse;
            background: #F5F5F5;
            color: #333;
        }
        .table_light th,
        .table_light td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
            font-size: 18px;
        }
        .table_light th {
            background-color: #E0E0E0;
        }
        .table_light tr:nth-child(even) {
            background: #F0F0F0;
        }
        .table_light a {
            color: #333;
            text-decoration: none;
            font-size: 20px;
        }
        .table_light a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1 style="font-size: 28px;">Taxi-Service</h1>
    </div>
    <table class="table_light">
        <tr>
            <th>Redirect to</th>
        </tr>
        <tr><td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/logout">Logout</a></td></tr>
    </table>
</div>
</body>
</html>
