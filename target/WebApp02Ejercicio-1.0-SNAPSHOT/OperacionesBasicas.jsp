<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.miempresa.funciones.OperacionesBasicas" %>
<!DOCTYPE html>
<html>
<head>
    <title>Operaciones Básicas</title>
</head>
<body>
    <h1>Operaciones Básicas</h1>
    
    <% 
       String num1Str = request.getParameter("num1");
       String num2Str = request.getParameter("num2");

       int num1 = 0; 
       int num2 = 0; 

       if (num1Str != null && !num1Str.isEmpty()) {
           try {
               num1 = Integer.parseInt(num1Str);
           } catch (NumberFormatException e) {
               out.println("<p>Error: Num1 no es un número válido.</p>");
           }
       }

       if (num2Str != null && !num2Str.isEmpty()) {
           try {
               num2 = Integer.parseInt(num2Str);
           } catch (NumberFormatException e) {
               out.println("<p>Error: Num2 no es un número válido.</p>");
           }
       }
    %>

    <p>Suma: <%= OperacionesBasicas.suma(num1, num2) %></p>
    <p>Resta: <%= OperacionesBasicas.resta(num1, num2) %></p>
    <p>Multiplicación: <%= OperacionesBasicas.multiplicacion(num1, num2) %></p>

    <% 
       int resultadoDivision = 0; 
       if (num2 != 0) {
           resultadoDivision = OperacionesBasicas.division(num1, num2);
       }
    %>

    <p>
        <% if (num2 != 0) { %>
           División: <%= resultadoDivision %>
        <% } else { %>
           División: Error: División por cero
        <% } %>
    </p>
</body>
</html>
