<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/addManager" method="post">
FirstName : <input type="text" name="firstName" /><br>
LastName : <input type="text" name="lastName" /><br>
UserName : <input type="text" name="userName" /><br>
Password : <input type="text" name="password" /><br>
Address : <input type="text" name="address" /><br>
Date Of Birth : <input type="text" name="dob" /><br>
Company : <input type="text" name="company" /><br>

<input type="submit" value="Submit" />
</form>
</body>
</html>