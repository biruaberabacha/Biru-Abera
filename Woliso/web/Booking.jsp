    <%
        try{
   String a=session.getAttribute("login").toString();
   if(a.isEmpty()){
     response.sendRedirect("login.jsp");  
   }
   else
       response.sendRedirect("Booking.jsp");
        }
        catch(Exception e){
            
        }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <img src="biru.jpg" height="50%" width="100%"/>
        <div id="nm">
<fieldset margin-left="50%">
<legend>Online Woliso campus Class Booking System Customer registration form </legend>

<form bgcolor="#99cccc" id="form1" name="form1" method="post" action="custreg.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Get Registered here!!!</h2></i> 
		 <table bgcolor="#99cccc" width="550" cellspacing="" cellpadding="2px" height="100%">
		
		<tr><td align="right"><strong>Full Name:</strong></td><td>
			<input type="text" name="a" id="a" required placeholder="Full name" pattern="[A-Za-z ]{3,}"/></td>
		</tr>
		
		<tr>
           <td align="right"><strong>Gender      :</strong></td><td width="300">
			<select name="b" size="0" required>
					  <option value="">---Select-gender---</option>
					  <option value="Male">Male</option>
					  <option value="Female">Female</option>
					 	  
					 </select><font size="2">
				</td>
                </tr><tr><td align="right"><strong>ID Number:</strong></td><td width="300">
			<input type="text" name="c" id="c" placeholder="customers ID" required pattern=['a-z A-Z 0-9']{6,}/></td>
		</tr>
                <tr><td align="right"><strong>Customer Type:</strong></td>
           <td width="300">
			<select name="d" size="0" required>
					  <option value="">---Select-your cust type---</option>
					  <option value="Admin">Admin</option>
					  <option value="Teacher">Teacher</option>
					  
					 	  </select><font size="2">
				</td></tr>
		<tr><td align="right"><strong>Mobile Phone:</strong></td><td>
			<input type="tel" name="e" title="phone number" id="e" required placeholder="mobile phone no" pattern="[0&9]{2}[0-9]{8,11}" title="Phone number "/></td>
		
                </tr>
		
		
			
                <tr>
			<td align="right"><strong>Email:<td>
			<input type="text" name="f" id="f"required placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
			</tr>
		
			
		
		<tr><td><tr><td align="right"><strong>password:</strong></td><td>
			<input type="text" name="g" id="g"required placeholder="password" pattern="[a-zA-Z0-9 ]{8,16}"/></td></td><td></td> </tr>
                <tr><td></td>
             <td align="right"><input type="submit" name="submit" value="Register" /> 
              <td><input type="reset" name="cmdreset" value="Clear"/></td>
        </tr>
				
				
			
	</table>
		
	</form>
</fieldset>
        </div>
        
	<h6>Did you want to perform another task?</h6> <a href="registratio.php"><button>Yes</button></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="logout.php"><button>No/logout</button></a><button><a id="ana" bgcolor="pink" href="empreg.php">Click to Register systems Employees</button></a>
 <div id="nu">
<fieldset margin-left="50%">
<legend>Online Woliso campus Class Booking System Room registration form </legend>

<form bgcolor="#99cccc" id="form1" name="form1" method="post" action="roomreg.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Register Room here!!!</h2></i> 
		 <table bgcolor="pink" width="550" cellspacing="" cellpadding="2px" height="100%">
		
		<tr><td align="right"><strong>Room Number:</strong></td><td>
			<input type="text" name="o" id="o" required placeholder="Room Number" pattern="[A-Za-z0-9 ]{3,}"/></td>
		</tr>
		
		<tr>
           <td align="right"><strong>Room Size:</strong></td><td width="300">
			<select name="p" size="0" required>
					  <option value="">---Select-size---</option>
					  <option value="40 students">40 students</option>
					  <option value="60 students">60 students</option>
					 	  <option value="30 students">30 students</option>
                                                  <option value="20 students">20 students</option>
					 </select><font size="2">
				</td>
                </tr><tr><td align="right"><strong>Block Name:</strong></td><td width="300">
			<input type="text" name="q" id="q" placeholder="Block Name" required pattern=['a-z A-Z 0-9']{6,}/></td>
		</tr>
                <tr><td align="right"><strong>Room Type:</strong></td>
           <td width="300">
			<select name="r" size="0" required>
					  <option value="">---Select-room type---</option>
					  <option value="Class">Class</option>
					  <option value="Lab">Lab</option>
					  
					 	  </select><font size="2">
				</td></tr>
		
		
		
			
               <tr><td></td>
             <td align="right"><input type="submit" name="submit" value="Register" /> 
              <td><input type="reset" name="cmdreset" value="Clear"/></td>
        </tr>
				
				
			
	</table>
		
	</form>
        </div>
</body>
</html>
<style> 
#nm
{
margin-left:0%; 
background-color:lightskyblue; 
font-size:20px;
margin-right:50%;

}
#nu
{
margin-left:55%; 
background-color:khaki; 
font-size:20px;
margin-right:0%;
margin-top:-33%;


}
body{
    background-image: url("i/index.jpg");
}
</style>
