<%-- 
    Document   : pagina2
    Created on : 01-oct-2017, 7:49:05
    Author     : Estudiante
--%>

<%@page import="clase.tipo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String var1= request.getParameter("txtValor");
            String var2="abc";
            //VARIABLE DE SESION
            session.setAttribute("svar1", var1);
            //creamos dos instancia
           tipo o1 = new tipo (1,"ejemplo");
           tipo o2 = new tipo ();
           session.setAttribute("sobjeto1",o1);
           application.setAttribute("aobjeto", o2);
           
      %>
      Valor recibido : <%=var1%><br>
      Valor 2 :<%=var2%>
    </body>
</html>
