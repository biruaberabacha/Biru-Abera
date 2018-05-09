<!DOCTYPE html>
<html>
<head>
<style>
 #menu{
     background-image: url(images/download.jpg);
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
   background-image:url(index1.jpg);
   border-radius: 2px;
   transform: scale(1);
   -webkit-transform: scale(1);
   -ms-transform: scale(1);
   z-index: 5;
   margin-left: 72%
   
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
<body style="background-image:url(background.png);width:100%;height:400%;Bborder:5px;">



<div id="menu">
  <a href="#">Useless Link</a>
  <ul>
    <li>
      <a href="#">Dropdown Link</a>
      <ul>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="#">view</a></li>
        <li><a href="#">Link 3</a></li>
      </ul>
    </li>
  </ul>
  
    <ul>
    <li>
      <a href="#">Dropdown Link</a>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
        <li><a href="#">Link 3</a></li>
      </ul>
    </li>
  </ul>
  
    <ul>
    <li>
      <a href="#">Dropdown Link</a>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
        <li><a href="#">Link 3</a></li>
      </ul>
    </li>
  </ul>
  
    <ul>
    <li>
      <a href="#">Dropdown Link</a>
      <ul>
        <li><a href="#">Link 1</a></li>
        <li><a href="#">Link 2</a></li>
        <li><a href="#">Link 3</a></li>
      </ul>
    </li>
  </ul>
  
   
  
</div>
<div id="im">
            <h1>LOGIN PAGE</h1>
        <form action="login.jsp" method="post">
            <table font-size="20" style="backgroung-color:pink;">
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
         
            String UserName=null;
            if(request.getParameter("sub")!=null){
              if(request.getParameter("sub")!="sub"){  
                 UserName=request.getParameter("name");
                String pass=request.getParameter("pass");
                String type=request.getParameter("d");
                Connection con=null;
               
               String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
           
              Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	Statement stmt=null;
        stmt=con.createStatement();
          String sql,sql2;
        
        sql="select * from login where Email="+"'"+UserName+"' and CustType="+"'"+type+"' and Password='"+pass+"'";
       
        ResultSet rs=stmt.executeQuery(sql);
        if(rs.next()){
            String ty=rs.getString("CustType");
            String name1=rs.getString("NAME");
            if(ty.equals("Admin")){
            session=request.getSession();
            session.setAttribute("login", name1);
            session.setAttribute("type", ty);
            response.sendRedirect("Registration.jsp");
            }
            else{
               session=request.getSession();
            session.setAttribute("login", name1);
            session.setAttribute("type", ty);
            response.sendRedirect("request.jsp");
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
background-image: url("images/u.png");
background-color: #ff0099;
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
table{
    background-color: khaki;
    
}
</style>

        




</body>
</html>