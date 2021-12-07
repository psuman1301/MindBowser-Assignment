<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<button onclick="window.location.href='/register?mngrId=${mngrId }'">Add Employee</button><br>


Employee List :
<table>
  <c:forEach items="${empList}" var="item">
    <th>EmpId</th>
    <tr>
      <td><c:out value="${item.empId}" /> </td>
      
    </tr>
  </c:forEach>
</table>
</body>
</html>