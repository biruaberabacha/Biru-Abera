<%-- 
    Document   : session
    Created on : May 2, 2018, 6:08:37 PM
    Author     : Abdii-isaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
   session.getAttribute("login");
   if(session!=null){
       response.sendRedirect("Booking.jsp");
   }
   else
       
   response.sendRedirect("login.jsp");
    %>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
