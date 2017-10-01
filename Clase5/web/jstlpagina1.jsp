<%-- 
    Document   : jstlpagina1
    Created on : 01-oct-2017, 8:48:13
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="var1" value="5"/>
        <c:set var="var2" value="7"/>
        Variable 1: ${var1}<br>
        Variable 2: ${var2}
        
        <c:if test="${var2>var1}">
              </c:if>
        <hr>
        Usando etiquetas choose <br>
        <c:choose>
            <c:when test="${var2>var1}">
                Variable 2 es mayor<br>
            </c:when>
            <c:otherwise>
                Variable 1 es mayor<br>
            </c:otherwise>
        </c:choose>
                <hr>
                Uso de etiqueta for <br>
                <c:forEach begin="1" end="10" step="1" var="x">
                    ${x}<br>
                </c:forEach>
    </body>
</html>
