<%-- 
    Document   : jstlpagina2
    Created on : 01-oct-2017, 9:36:43
    Author     : Estudiante
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="a" value="9"/>
        <fmt:parseNumber var="var1" value="9"/>
        <fmt:parseNumber var="var2" value="${a}"/>
        <c:if test="${var2>var1}">
            Variable 2 es mayor
            </c:if>
    </body>
</html>
