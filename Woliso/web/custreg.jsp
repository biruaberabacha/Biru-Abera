<%-- 
    Document   : custreg
    Created on : May 1, 2018, 2:47:12 PM
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
        <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
<%
String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;
String name=null;
Date d=new Date();
out.println(d);
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
	 String v1=request.getParameter("a");
	 String v2=request.getParameter("b");
         String v3=request.getParameter("c");
	 String v4=request.getParameter("d");
         String v5=request.getParameter("e");
	 String v6=request.getParameter("f");
         String v7=request.getParameter("g");
PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into customer values(?,?,?,?,?,?)");
PreparedStatement pst1=(PreparedStatement)con.prepareStatement("INSERT into login values(?,?,?,?,?,?)");
pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);
pst.setString(4, v4);
pst.setString(5, v5);
pst.setString(6, v6);
pst.executeUpdate();
pst1.setString(1, v1);
pst1.setString(2, v3);
pst1.setString(3, v4);
pst1.setString(4, v6);
pst1.setString(5, v7);
pst1.setString(6, v5);
pst1.executeUpdate();
%>
<%="data inserted" %>
<% %>
    </body>
</html>
