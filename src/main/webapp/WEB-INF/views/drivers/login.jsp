<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .login-form {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-form label {
            font-size: 16px;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 16px;
        }
        .login-form button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="center">
    <div class="login-form">
        <h4 style="color:red; font-size: 18px;">${errorMsg}</h4>
        <form method="post" action="${pageContext.request.contextPath}/login">
            <label for="login" style="font-size: 18px;">Please enter your login:</label><br>
            <input type="text" id="login" name="login"><br>
            <label for="password" style="font-size: 18px;">Please enter your password:</label><br>
            <input type="password" id="password" name="password"><br>
            <button type="submit">Login</button>
        </form>
        <p style="font-size: 16px;"><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></p>
    </div>
</div>
</body>
</html>
