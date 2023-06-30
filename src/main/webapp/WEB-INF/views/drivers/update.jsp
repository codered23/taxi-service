<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
  <title>Update</title>
</head>
<body>
<h1 class="table_dark">Update driver:</h1>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/update?id=${driver.id}">
  <table border="1" class="table_dark">
    <tr>
      <th>Name</th>
      <th>License number</th>
      <th>Login</th>
      <th>Password</th>
      <th>Update</th>
    </tr>
    <tr>
      <td>
        <input type="text" name="name" form="driver" required>
      </td>
      <td>
        <input type="text" name="license_number" form="driver" required>
      </td>
      <td>
        <input type="text" name="login" form="driver" required>
      </td>
      <td>
        <input type="password" name="password" form="driver" required>
      </td>
      <td>
        <input type="submit" name="update" form="driver">
      </td>
    </tr>
  </table>
  <input type="hidden" name="id" value="${driver.id}">
</form>
</body>
</html>