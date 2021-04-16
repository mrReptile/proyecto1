<%-- 
    Document   : logincorrecto
    Created on : 18/02/2021, 11:33:17 PM
    Author     : jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login correcto</h1>
        <h2>NOMBRE Y APELLIDO: ${user.nombre} ${user.apellidos}</h2>
        <h2>CORREO: ${user.correo}</h2>
    </body>
</html>
