<%-- 
    Document   : sessio
    Created on : May 2, 2018, 6:15:22 PM
    Author     : Abdii-isaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
   session.getAttribute("login");
   if(session!=null){
       response.sendRedirect("request.jsp");
   }
   else
       
   response.sendRedirect("login.jsp");
    %>
    </body>
</html>
