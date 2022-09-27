<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 22.08.2022
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Student conformation</title>
</head>
<body>
The student is confirmed: ${theNewStudent.firstName} ${theNewStudent.lastName}
<br>
Country: ${theNewStudent.country}

<br><br>
Favorite language: ${theNewStudent.favoriteLanguage}
<br>
Favorite OS:
<ui>
    <c:forEach var="temp" items="${theNewStudent.OS}">
        <li>${temp}</li>
    </c:forEach>
</ui>
</body>
</html>
