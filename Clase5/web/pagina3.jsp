<%-- 
    Document   : pagina3
    Created on : 01-oct-2017, 7:49:16
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
            //variables de exepcion
            //obtenemos //tipo de variable objeto
            String var1= (String)session.getAttribute("svar1");
            String var2="xyz";
            tipo o = null;
            tipo x = null;
             o = (tipo) session.getAttribute("sobjeto1");
             x = (tipo) application.getAttribute("aobjeto");
             
           
      %>
      Valor recibido : <%=var1%><br>
      Valor 2 :<%=var2%><br>
      Valor de Objeto: <%=o.getNombre()%>
      valor de objeto (application)<%=x.getNombre()%>
      
    </body>
</html>
