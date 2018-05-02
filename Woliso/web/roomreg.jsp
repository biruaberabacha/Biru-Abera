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
    
        String sql;
        int id=0;
        sql="select * from value";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next()){
            id=rs.getInt("ID");
            id+=1;
        }
        String st="8:00AM",et="6:00PM",s="Free";
	 String v1=request.getParameter("o");
	 String v2=request.getParameter("p");
         String v3=request.getParameter("q");
	 String v4=request.getParameter("r");
         
	 String r="RID/"+id+"/10";

PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into room values(?,?,?,?,?)");
PreparedStatement pst1=(PreparedStatement)con.prepareStatement("INSERT into rooms values(?,?,?,?,?)");
pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);
pst.setString(4, v4);
pst.setString(5, r);
pst.executeUpdate();
int i=id-1;
String sql1="update value set ID="+"'"+id+"' where ID="+"'"+i+"'";
        stmt.executeUpdate(sql1);
        pst.setString(1, r);
%>
<%="data inserted" %>
<% %>
    </body>
</html>
