<%-- 
    Document   : logout
    Created on : May 2, 2018, 4:41:13 PM
    Author     : Abdii-isaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  
    <body><%
       session.invalidate();
       response.sendRedirect("sessio.jsp");
            %>
            
    </body>
</html>
