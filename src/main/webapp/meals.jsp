<%--
  Created by IntelliJ IDEA.
  User: Johnson
  Date: 04.03.2018
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>

<html>
<link rel="stylesheet" href="application.css" type="text/css">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<h1>Meals</h1>
<table border="1" class="tr">
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${mealsTable}" var="meal">
        <tr class=${meal.isExceed() ? 'normal' : 'exceeded'}>
            <javatime:parseLocalDateTime value="${meal.getDateTime()}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate" />
            <td><javatime:format value="${parsedDate}" pattern="yyyy-MM-dd HH:mm"/></td>
            <td>${meal.getDescription()}</td>
            <td>${meal.getCalories()}</td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>
