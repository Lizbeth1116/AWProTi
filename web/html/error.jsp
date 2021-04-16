<%-- 
    Document   : error
    Created on : 04-nov-2020, 15:59:22
    Author     : hecdanhdzgrc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  rel="stylesheet" type="text/css" href="html/css/cssRegistro.css">
        <title>Ejemplo de un Sistema para Estudiantes</title>
    </head>
    <body id="contenedor">
        <div ><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br>
    <center>
        <h1>¡Error en el sitema!</h1>
        <br><br>
                <br>
        <h3><%= request.getAttribute("msjError") %></h3>
    </center>
    </div>
    </body>
</html>
