<!DOCTYPE html>
<html>
<head>
<style>
 #menu{
     background-image: url(images/download.jpg);
 }
 body{
     background-image: url("images/class.PNG")
 }
div a {
    text-decoration: none;
    color: white;
    font-size: 14px;
    padding: 15px;
    display:inline-block;
 
  margin-left: 50%;
}
ul {
  display: inline;
  margin: 0;
  padding: 0;

}
ul li {display: inline-block;}
ul li:hover {background: balck;}
ul li:hover ul {display: block;}
ul li ul {
  position: absolute;
  width: 200px;
  display: none;
}
ul li ul li { 
  background: #555; 
  display: block; 
}
ul li ul li a {display:block !important;} 
ul li ul li:hover {background:blue;}

#box {
  position: fixed;
  
   opacity: 1;
   float: left;
   padding: 50px 40px 20px 50px;
  margin-top:0%;
  
   border-radius: 2px;
   transform: scale(1);
   -webkit-transform: scale(1);
   -ms-transform: scale(1);
   z-index: 5;
   margin-left: 72%
   
}
table{
    background-color: pink;
}


#box2 {
  position: relative;
  
   opacity: 1;
   float: left;
   padding: 50px 40px 20px 50px;
  margin-top:-5%;
   background-image:url(index1.jpg);
   border-radius: 2px;
   transform: scale(1);
   -webkit-transform: scale(1);
   -ms-transform: scale(1);
   z-index: 5;
   margin-right: 25%
}

#footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #155;
   color: white;
   
   float:left;
   background-image:url(.jpg);
   font:blue;
   font-size:20px;
}
</style>
</head>
<body>

 <img src="images/ambo1.JPG"  width="100%"/>


<div id="im">
            <h1>LOGIN PAGE</h1>
        <form action="login.jsp" method="post">
            <table font-size="20" style="backgroung-color:pink;">
                <tr><td><h2>Username:</h2></td><td><input placeholder="Email or phone" required type="text" name="name" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td></tr>
                <tr><td align="right"><strong><h2>Customer Type:</h2></strong></td>
           <td width="300">
			<select name="type" size="0" required style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select type---</option>
					  <option value="Admin">Admin</option>
					  <option value="Teacher">Teacher</option>
					  
					 	  </select><font size="2">
				</td></tr>
                <tr><td><h2>password:</h2></td><td><input placeholder="Password" required type="password" name="password"/ style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"></td></tr>
            
                <tr><td></td><td><input type="submit" name="submit" id="lo" value="Login"/></td></tr>
      </table>  </form>
        <a href="changePassword.jsp"><button>Change Password</button></a></div>
        <%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
        <%if("POST".equalsIgnoreCase(request.getMethod())){//to check if button is clicked or not
         
            String UserName=null;
            if(request.getParameter("submit")!=null){//to check name of button is null or not
              if(request.getParameter("submit")!="submit"){  //to check name of button is equal to given string or not
                  //to recieve the values from textfields
                 UserName=request.getParameter("name");
                String password=request.getParameter("password");
                String type=request.getParameter("type");
                Connection con=null;
               
               String mysqlconnector="jdbc:mysql://localhost:3306/woliso";// To Identify our server as well as name of database
           
              Class.forName("com.mysql.jdbc.Driver");//To start loadind driver
	 con=DriverManager.getConnection(mysqlconnector,"root","");// to create connection with our databases
         
	Statement stmt=null;
        stmt=con.createStatement();
          String sql,sql2;
        
        sql="select * from login where Phone="+"'"+UserName+"' or Email="+"'"+UserName+"' and CustType="+"'"+type+"' and Password='"+password+"'";//creating sql statement to check if information is exist in database or not
       
        ResultSet result=stmt.executeQuery(sql);// To store the values of database to Result set variable
        if(result.next()){//To fetch data from table
            //to recieve the values from table and to check it
            String CustType=result.getString("CustType");
            
            String name1=result.getString("NAME");
            if(CustType.equals("Admin")){
            session=request.getSession();
            session.setAttribute("login", name1);
            session.setAttribute("type", CustType);
            response.sendRedirect("adminlogin.jsp");
            }
            else{
               session=request.getSession();
            session.setAttribute("login", name1);
            session.setAttribute("type", CustType);
            response.sendRedirect("custlogin.jsp");
            }
                
        }
        else{ 
              
            %>
            <script>alert('Please enter correct user information!')</script>
            <%
            
            }}
        }}




	 
    
       
     %>   


    </body>
</html>
<style> 
#im
{
position:relative;
margin-top: 0%;
opacity:1;
float:left;
padding:50px 40px 20px 50px;

border-radius: 2px;
transform: scale(1);
-webkit-transform: scale(1);
-ms-transform: scale(1);
z-index: 5;
margin-left: 30%;

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
    background-image: url("images/class.PNG");
}
#lo:hover{
    font-size: 100%;
    background-color: green;
}
#lo:checked{
    background-color: red;
}
table{
    background-color: khaki;
    
}
h1{
    color: white;
}
</style>

        


<div id="sd">
<center>Woliso,Ethiopia </span><span class="style8"><br>
    <strong>Po.Box :</strong>123<br>
    <strong>Tel :</strong> +251 12367345 <br>
    <strong>Fax :</strong> +251 12364588<br>
    <strong>E-mail :</strong> classbooking@yahoo.com</span> </span></td><br><br>
	Copyright &copy 2018 IT MSc 1<sup>st</sup>  year student Computing Solutions PLC. All Rights Reserved!! </span>
	</center></div>
<style>
          #sd{
     margin-top: 50%
     
            }
            #sd{
                background-color: khaki;
            }  
        </style>
</body>
<link href="menu.css" rel=stylesheet>
	<script language=JavaScript src="scripts/menu.js"></script>
	<script language=JavaScript src="scripts/menu_hier.js"></script>
	<script language="JavaScript" src = "scripts/myscript.js"></script>
	<script language="JavaScript" type="text/javascript" 	src="scripts/sidebar.js"></script>
</html>