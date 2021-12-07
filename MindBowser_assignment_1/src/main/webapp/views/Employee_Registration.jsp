<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="/addEmployee" method="post">
EmpID : <input type="text" name="empId" /><br>
FirstName : <input type="text" name="firstName" /><br>
LastName : <input type="text" name="lastName" /><br>
Address : <input type="text" name="address" /><br>
Date Of Birth : <input type="text" name="dob" /><br>
Mobile : <input type="text" name="mobile" /><br>
City : <input type="text" name="city" />
<input type="hidden" name="mngrId" value="${mngrId }" />
<input type="submit" value="Submit" />
</form>
</body>
</html>