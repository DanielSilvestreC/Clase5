<%-- 
    Document   : tarea
    Created on : 01-oct-2017, 10:05:02
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <sql:setDataSource driver="com.mysql.jdbc.Driver"                           
                           url="jdbc:mysql://localhost:3306/hola"
                           user="root"
                           password="database"
                           var="cn"/>
        <sql:query var="sqldato" dataSource="${cn}">
            select codigo,nombre,precio from dato
        </sql:query>
            <table>
                <tr>
                    <td>Codigo</td><td>Nombre</td><td>precio</td>
                </tr>
                <c:forEach var="fila" items="${sqldato.rows}">
                    <tr>
                        <td>${fila.codigo}</td>
                        <td>${fila.nombre}</td>
                        <td>${fila.precio}</td>
                    </tr>
                </c:forEach>
            </table>
    </body>
</html>
