<%-- 
    Document   : custreg
    Created on : May 1, 2018, 2:47:12 PM
    Author     : Abdii-isaa
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="im">
            <h1>LOGIN PAGE</h1>
        <form action="login.jsp" method="post">
            <table font-size="20">
                <tr><td><h2>Username:</h2></td><td><input placeholder="Enter Email" required type="text" name="name" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td></tr>
                <tr><td align="right"><strong><h2>Customer Type:</h2></strong></td>
           <td width="300">
			<select name="d" size="0" required style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select type---</option>
					  <option value="Admin">Admin</option>
					  <option value="Teacher">Teacher</option>
					  
					 	  </select><font size="2">
				</td></tr>
                <tr><td><h2>password:</h2></td><td><input placeholder="Password" required type="password" name="pass"/ style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"></td></tr>
            
            <tr><td></td><td><input type="submit" name="sub" id="lo" value="Login"/></td></tr>
      </table>  </form>
        </div>
        <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
        <%if("POST".equalsIgnoreCase(request.getMethod())){
         
            String name=null;
            if(request.getParameter("sub")!=null){
              if(request.getParameter("sub")!="sub"){  
                 name=request.getParameter("name");
                String pass=request.getParameter("pass");
                String type=request.getParameter("d");
                Connection con=null;
               Statement stmt=null;
               String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
           
              Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
          String sql,sql2;
        
        sql="select * from login where Email="+"'"+name+"'and CustType="+"'"+type+"' and Password='"+pass+"'";
       
        ResultSet rs=stmt.executeQuery(sql);
        if(rs.next()){
            String ty=rs.getString("CustType");
            if(ty.equals("Admin")){
            session=request.getSession();
            session.setAttribute("login", name);
            response.sendRedirect("Booking.jsp");
            }
            else{
               session=request.getSession();
            session.setAttribute("login", name);
            response.sendRedirect("request.jsp");
            }
                
        }
        else{ 
              
            %>
            <script>alert('please enter customers id number')</script>
            <%
              response.sendRedirect("login.jsp");
            }}
        }}




	 
    
       
     %>   


    </body>
</html>
<style> 
#im
{
position:relative;
margin-top: 2%;
opacity:1;
float:left;
padding:50px 40px 20px 50px;
background: #fff;
border-radius: 2px;
transform: scale(1);
-webkit-transform: scale(1);
-ms-transform: scale(1);
z-index: 5;
margin-left: 60%;
}
#ve
{
margin-left:0%; 
background-color:pink; 
font-size:20px;
margin-right:50%;
margin-top:-20%;


}
#wow{
   background: white; 
}
body{
    background-image: url("i/index.jpg");
}
#lo:hover{
    font-size: 100%;
    background-color: green;
}
#lo:checked{
    background-color: red;
}
</style>