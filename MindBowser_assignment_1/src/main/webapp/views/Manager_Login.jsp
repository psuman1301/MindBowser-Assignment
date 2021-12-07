<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: centre">
<form action="/loginManager" method="post">

Username : <input type="text" name="userName" /><br>
Password : <input type="text" name="password" /><br>
<input type="submit" value="login" />
</form>
<button onclick="window.location.href='/signup'">SignUP</button>
</div>

</body>
</html>