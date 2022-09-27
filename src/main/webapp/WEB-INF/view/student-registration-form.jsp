<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 22.08.2022
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Student registration form</title>
</head>
<body>

<form:form action="student-confirmation" modelAttribute="theNewStudent">

    First name: <form:input path="firstName"/>
    Last name <form:input path="lastName"/>
    
    <br><br>
    
    <form:select path="country">
        <form:option value="Ukraine" label="Ukraine"/>
        <form:option value="UK" label="UK"/>
        <form:option value="Brazil" label="Brazil"/>
    </form:select>

    <br><br>

    <form:radiobutton path="favoriteLanguage" value="Java" label="Java"/>
    <form:radiobutton path="favoriteLanguage" value="C#" label="C#"/>
    <form:radiobutton path="favoriteLanguage" value="C" label="C"/>
    <form:radiobutton path="favoriteLanguage" value="Ruby" label="Ruby"/>

    <br><br>

    <form:checkbox path="OS" value="Linux" label="Linux" />
    <form:checkbox path="OS" value="Mac OS" label="Mac OS" />
    <form:checkbox path="OS" value="Windows" label="Windows" />

    <br><br>

    <input type="submit" value="Submit">

</form:form>

<br><br>
<tr>
    <td>First name</td>
    <td>Last name</td>
</tr>
<ui>
     <c:forEach items="${registeredStudents}" var="temp" varStatus="tagStatus">
        <li>${temp.firstName} ${temp.lastName}</li>
     </c:forEach>
</ui>
</body>
</html>
