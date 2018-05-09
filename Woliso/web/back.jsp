<%-- 
    Document   : back
    Created on : May 8, 2018, 9:51:01 AM
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
       request.getSession(false);
       
       String rrr=session.getAttribute("type").toString();
       if(rrr.equals("Admin"))
           response.sendRedirect("Registration.jsp");
       else
       response.sendRedirect("request.jsp");
       
    %><h1>Hello World!</h1>
    </body>
</html>
