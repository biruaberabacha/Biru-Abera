<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Woliso.Registration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Change Password Page</title>
<style type="text/css">
<!--
body {
	background-color: #6699CC;
}
.style1 {color: #8080FF}
-->
</style></head>

<style> 
#a
{ 
background-color:pink; 
height:20%;
margin-right:60%;
} 
body{
background-color:white;}
</style>
<body ><img src="images/ambo.PNG" width="40%"/>
<div id="a">
<form action="changePassword.jsp" method="post" name="change" onclick="function validate();"><br>
        <table><tr><td>ID number:</td><td><input required  type="text" name="id" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td></tr>

<tr><td>Current Password:</td><td><input required type="password" name="current" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td></tr>
<tr><td>New Password:</td><td><input required type="password" name="new" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td></tr>
<tr><td>Confirm Password:</td><td><input required  type="password" name="confirm" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td></tr>
<tr><td><input type="submit" name="sub" id="submit" value="Change password" /></td></tr></table>
</form><a href="logout.jsp"><button>Logout</button></a><a href="forgot1.jsp"><button>Forgot password?</button></a></div>
</body>
</html>
<%if("POST".equalsIgnoreCase(request.getMethod())){//to check if button is clicked or not
      Registration register=new Registration();      
            if(request.getParameter("sub")!=null){//to check name of button is null or not
              if(request.getParameter("sub")!="sub"){//to check name of button is equal to given string or not
             String mysqlconnector="jdbc:mysql://localhost:3306/woliso";//to assign the location of database
Connection con=null;
Statement stmt=null;
int count=5,counter=0;


                  String ID=request.getParameter("id");
                  String current=request.getParameter("current");
                String newpass=request.getParameter("new");
                String confirm=request.getParameter("confirm");
         con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
      
            String password=null;
           String sql="select * from login where ID='"+ID+"'";//creating sql statement to check if information is exist in database or not
       
        ResultSet result=stmt.executeQuery(sql);
             
           while(result.next()){
                 counter++;
                password=result.getString("Password");
                 
             }
             
                 if(counter<1)
                     out.println("<script>alert('There is no such like Password in Database!')</script>");
                 else  if(!password.equals(current))
                   out.println("<script>alert('Invalid Password!')</script>");  
                 else if(!newpass.equals(confirm))
                   out.println("<script>alert('new Password you entered is not the same!')</script>");       
                 else{
                     register.ChangePassword(ID, newpass);
           out.println("<script>alert('your password is changed successfully!')</script>");
                 }
            }}}
     %>  

