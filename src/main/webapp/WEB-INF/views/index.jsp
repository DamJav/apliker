<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Damian
  Date: 18.02.2020
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Strona główna</title>
    <link rel="stylesheet" href="/resources/style.css"/>
</head>
<body>
<div id="search">
    <form action="/search" method="post">
        <label>Podaj nazwę firmy:</label> <br/>
        <input type="text" name="companyName"/><br/>
        <input type="submit" value="Sprawdź"/>
    </form>
    <for:forEach items="${ads}" var="ad" varStatus="i">
        <table>
        <tr>
            <td> Firma:  </td>
            <td>  Tytuł: </td>
            <td> Miasto: </td>
            <td> Odpowiedź:</td>
            <td> Data:</td>
        </tr>
        <tr>
            <td>${ad.company}</td>
            <td>${ad.title}</td>
            <td>${ad.city}</td>
            <td>${ad.answer}</td>
            <td>${ad.sent}</td>
        </tr>
        </table>
    </for:forEach>
</div>



<div id="form">
    <form:form action="/add" modelAttribute="advertisement">
        <form:label path="title">Tytuł ogłoszenia</form:label>
        <form:input path="title"/><br/>
        <form:label path="company">Nazwa firmy</form:label>
        <form:input path="company"/><br/>
        <form:label path="city">Miasto</form:label>
        <form:input path="city"/><br/>
        <button type="reset" >Wyczyść</button>
        <button type="submit">Dodaj</button>
</form:form>
</div>






</body>
</html>
