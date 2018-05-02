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
        <table border="1">
                <tr><td>
                        Room ID
                    </td><td>
                        Date
                    </td><td>
                        Start Time1
                    </td><td>
                        End Time1
                    </td><td>
                        Status1
                    </td><td>
                        Start Time2
                    </td><td>
                        End Time2
                    </td><td>
                        Status2
                    </td></tr>
        <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
<%
String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;
String name=null;
Date d=new Date();

	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    
        String sql;
        
        sql="select * from rooms";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next()){
            String id=rs.getString("Room ID");
            String Date=rs.getString("Date");
            String st=rs.getString("Start time1");
            String et=rs.getString("End time1");
            String st1=rs.getString("Start time2");
            String et1=rs.getString("End time2");
            String s=rs.getString("Status1");
            String s1=rs.getString("Status2");
            %>
                <tr><td> 
                        <% out.print(id);%>
                    </td><td>
                        <% out.print(Date);%>
                    </td>
                    <td> 
                        <% out.print(st);%>
                    </td><td>
                        <% out.print(et);%>
                    </td>
                    <td> 
                        <% out.print(s);%>
                    </td><td>
                        <% out.print(st1);%>
                        
                    </td>
                    <td> 
                        <% out.print(et1);%>
                    </td><td>
                        <% out.print(s1);%>
                    </td>
            
            <%
    
        }
     %>   
</table>

    </body>
</html>
