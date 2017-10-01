<%-- 
    Document   : jstlpagina3
    Created on : 01-oct-2017, 9:42:46
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
        <sql:query var="sqlCategoria" dataSource="${cn}">
            select codigo,nombre,precio from dato
        </sql:query>
            <select id="selCategoria">
                <c:forEach var="fila" items="${sqlCategoria.rows}">
                   
                    <option value="${fila.codigo}">${fila.nombre}</option>
                </c:forEach>
                    
                 
    </body>
</html>
