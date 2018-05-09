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
        <h1>Class reserved for the Teacher is the following</h1>
        <table border="1" style="background-color:#ff0099;color:white; font-size:15px; font-family:elephant;">
                <tr><td>
                        Room ID
                    </td><td>
                        Date
                    </td><td>
                        Start Time
                    </td><td>
                        End Time
                    </td><td>
                        Status
                    </td><td>
                        Teacher Name
                    </td></tr>
        <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
<%@page import=" Woliso.Registration "%>
<%
    
Registration r=new Registration();
    String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;
String name=null;
//Date d=new Date();
//out.println(d);
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
        String sql;
        
        sql="select * from room_assign order by Start_time";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next()){
            String id=rs.getString("Room_ID");
            String Date=rs.getString("Date");
            String st=rs.getString("Start_time");
            String et=rs.getString("End_time");
            
            String s=rs.getString("Status");
            String tn=rs.getString(6);
            
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
                        <% out.print(tn);%>
                    </td></td><td> 
                        <% out.print("<a href='view.jsp'>edit</a>");%>
                    </td></tr>
            
            <%
    
        }
     %>   
</table>
     <a href="back.jsp">Back</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="logout.jsp"><button>logout</button></a>
    </body>
    
</html>
<style>
body{
    background-color: khaki;
            
        }
    </style>