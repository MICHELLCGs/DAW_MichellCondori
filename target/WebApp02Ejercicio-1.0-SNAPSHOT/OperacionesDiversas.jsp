<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.miempresa.funciones.OperacionesDiversas" %>
<!DOCTYPE html>
<html>
<head>
    <title>Operaciones Diversas</title>
</head>
<body>
    <h1>Operaciones Diversas</h1>
    
    <%-- Obtener valor de la solicitud --%>
    <% 
       String numStr = request.getParameter("num");

       double num = 0.0; // Valor predeterminado en caso de que no se proporcione un valor válido

       if (numStr != null && !numStr.isEmpty()) {
           try {
               num = Double.parseDouble(numStr);
           } catch (NumberFormatException e) {
               out.println("<p>Error: El valor proporcionado no es un número válido.</p>");
           }
       }
    %>

    <%-- Llamar a las funciones desde la clase Java --%>
    <p>Raíz Cuadrada: <%= OperacionesDiversas.raizCuadrada(num) %></p>
    <p>Raíz Cúbica: <%= OperacionesDiversas.raizCubica(num) %></p>
    <p>Potencia: <%= OperacionesDiversas.potencia(num, 2) %></p>
    <p>Valor Absoluto: <%= OperacionesDiversas.valorAbsoluto(num) %></p>
</body>
</html>
