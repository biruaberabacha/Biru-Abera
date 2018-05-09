
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
<%@page import="Woliso.Registration" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
            <%
       request.getSession(false);
       
       String rrr=session.getAttribute("type").toString();
       if(!rrr.equals("Admin"))
           response.sendRedirect("login.jsp");
       
    %>
    <body>
        <img src="images/bach.PNG" height="30%" width="100%"/>
        <div id="nm">
<fieldset margin-left="50%">
<legend>Online Woliso campus Class Booking System Customer registration form </legend>

<form bgcolor="#99cccc" id="form1" name="form1" method="post" action="Registration.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Get Registered here!!!</h2></i> 
		 <table bgcolor="#99cccc" width="550" cellspacing="" cellpadding="2px" height="100%" >
		
		<tr><td align="right"><strong>Full Name:</strong></td><td>
			<input type="text" name="FullName" id="a" required placeholder="Full name" pattern="[A-Za-z ]{3,}" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td>
		</tr>
		
		<tr>
           <td align="right"><strong>Gender      :</strong></td><td width="300">
			<select name="Gender" size="0" required   style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-gender---</option>
					  <option value="Male">Male</option>
					  <option value="Female">Female</option>
					 	  
					 </select><font size="2">
				</td>
                </tr><tr><td align="right"><strong>ID Number:</strong></td><td width="300">
			<input type="text" name="IdNumber" id="c" placeholder="customers ID" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;" required pattern=['a-z A-Z 0-9']{6,}/></td>
		</tr>
                <tr><td align="right"><strong>Customer Type:</strong></td>
           <td width="300">
			<select name="CustomerType" size="0" required   style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-your cust type---</option>
					  <option value="Admin">Admin</option>
					  <option value="Teacher">Teacher</option>
					  
					 	  </select><font size="2">
				</td></tr>
		<tr><td align="right"><strong>Mobile Phone:</strong></td><td>
			<input type="tel" name="Phone" title="phone number" id="e" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"   required placeholder="mobile phone no" pattern="[0&9]{2}[0-9]{8,11}" title="Phone number "/></td>
		
                </tr>
		
		
			
                <tr>
			<td align="right"><strong>Email:<td>
			<input type="text" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"  name="Email" id="f"required placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"/></td>
			</tr>
		
			
		
		<tr><td><tr><td align="right"><strong>password:</strong></td><td>
			<input type="text"  style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;" name="Password" id="g"required placeholder="len(8)<=Letter + Digits" pattern="[a-zA-Z0-9 ]{8,16}"/></td></td><td></td> </tr>
                <tr><td></td>
             <td align="right"><input type="submit" name="submit" value="Register" /> 
              <td><input type="reset" name="cmdreset" value="Clear"/></td>
        </tr>
				
				
			
	</table>
		
	</form>
</fieldset>
        </div>
        
	<h6>Did you want to search assigned rooms?</h6> <a href="view.jsp"><button>Yes</button></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="logout.jsp"><button>No/logout</button></a>
 <div id="nu">
<fieldset margin-left="50%">
<legend>Online Woliso campus Class Booking System Room registration form </legend>

<form bgcolor="#99cccc" id="form1" name="form1" method="post" action="Registration.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Register Room here!!!</h2></i> 
		 <table bgcolor="pink" width="550" cellspacing="" cellpadding="2px" height="100%">
		
		<tr><td align="right"><strong>Room Number:</strong></td><td width="300">
			<select name="RoomNumber" size="0" required  style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
                            <option value="">---Select-Room number---</option>
                            <% 
                                for(int i=1;i<=30;i++){ // to assign Room number for each rooms
                                    
                                
                                    String val="ROOM"+i;
                                
                            
                            %>
					  
                            <option value="<% out.print(val);%>"><% out.print(val) ;%></option>
                                          
                                          
                                          <% }%>
					  </select><font size="2">
				</td></tr>
		
		<tr>
           <td align="right"><strong>Room Size:</strong></td><td width="300">
			<select name="RoomSize" size="0" required  style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-Room size---</option>
					  <option value="40 students">40 students</option>
					  <option value="60 students">60 students</option>
					 	  <option value="30 students">30 students</option>
                                                  <option value="20 students">20 students</option>
					 </select><font size="2">
				</td>
                </tr><tr><td align="right"><strong>Block Name:</strong></td><td width="300">
			<select name="BlockName" size="0" required  style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-block name---</option>
					  <option value="OLD BLOCK">OLD BLOCK</option>
					  <option value="SMART CLASS">SMART CLASS</option>
					  
					 	  </select><font size="2"></td>
		</tr>
                <tr><td align="right"><strong>Room Type:</strong></td>
           <td width="300">
			<select name="RoomType" size="0" required  style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-room type---</option>
					  <option value="Class">Class</option>
					  <option value="Lab">Lab</option>
					  
					 	  </select><font size="2">
				</td></tr>
		
		
		
			
               <tr><td></td>
             <td align="right"><input type="submit" name="ros" value="Register"  /> 
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
position: relative;
}
#nu
{
margin-left:55%; 
background-color:khaki; 
font-size:20px;
margin-right:0%;
margin-top:-53%;
position: relative;

}
body{
    background-image: url("i/index.jpg");
}
table{
    font-size: 150%;
}
h6{
    font-size: 150%;
}
</style>

<%if("POST".equalsIgnoreCase(request.getMethod())){
      Registration r=new Registration();      
            if(request.getParameter("submit")!=null){
              if(request.getParameter("submit")!="submit"){
             String mysqlconnector="jdbc:mysql://localhost:3306/woliso";//to assign the location of database
Connection con=null;
Statement stmt=null;
int xx=0;
	 Class.forName("com.mysql.jdbc.Driver");// to call driver to connect with database
	 con=DriverManager.getConnection(mysqlconnector,"root","");// to connect with database
	 stmt=con.createStatement();
          // to recieve the value from the form
         String value1=request.getParameter("FullName");
	 String value2=request.getParameter("Gender");
         String value3=request.getParameter("IdNumber");
	 String value4=request.getParameter("CustomerType");
         String value5=request.getParameter("Phone");
	 String value6=request.getParameter("Email");
         String value7=request.getParameter("Password");
         
         String sql5="Select * from Customer where ID='"+value3+"'";// to search valus from table customer
         ResultSet rs5=stmt.executeQuery(sql5);// to set results in the ResultSet
         while(rs5.next()){// to get values from table
               xx++;// to count how many values are fetched from the table
           }
         if(xx>=1){//to check if vlaues are exist in database and if there is value in the table to send message for the user 
             out.println("<script>alert('Customer of this ID number is Registered  before  this time')</script>");
         }
         else{
r.register_customer(value1, value2, value3, value4, value5, value6,value7);// to call class to enter vlaue to database and send message for the user
out.println("<script>alert('Sent to database Successfully')</script>"); 
              }
              }}}
            
               
              
            %>
 
<%if("POST".equalsIgnoreCase(request.getMethod())){
         
            if(request.getParameter("ros")!=null){
              if(request.getParameter("ros")!="ros"){
                   Registration r=new Registration();
            String name=null;
String mysqlconnector="jdbc:mysql://localhost:3306/woliso";//to assign the location of database
Connection con=null;
Statement stmt=null;

	 Class.forName("com.mysql.jdbc.Driver");// to call driver to connect with database
	 con=DriverManager.getConnection(mysqlconnector,"root","");// to connect with database
	 stmt=con.createStatement();
    
     String sql,rn,bn;
        int id=0,ss=0;
        sql="select * from value"; // to search valus from table value
        ResultSet rs1,rs=stmt.executeQuery(sql);// to set results in the ResultSet
        while(rs.next()){ // to get values from table
            id=rs.getInt("ID");// assigning value of ID column to id variable
            id+=1;// to increment id value by 1
        }
      // to recieve the value from the form
       
	 String value1=request.getParameter("RoomNumber");
	 String value2=request.getParameter("RoomSize");
         String value3=request.getParameter("BlockName");
	 String value4=request.getParameter("RoomType");
           String sql1="Select * from room where Room_Number='"+value1+"'";// to search valus from table value
           rs1=stmt.executeQuery(sql1);// to set results in the ResultSet
           while(rs1.next()){// to get values from table
               // to assign value of column to variable
            rn=rs1.getString("Room_Number");
            bn=rs1.getString("Block_Name");
           if(rn.equals(value1) && bn.equals(value3)){// to check if variables are equal or 
               ss++;// to increment ss value by 1
           }
        }
           if(ss>=1){//to check if values are exist in database and if there is value in the table to send message for the user 

               out.println("<script>alert('This room is Registered before this time')</script>");
           }
           else{
	 String rr="RID/"+id+"/10";//to assign ID number for each rooms
         Date d= new Date();//to recieve System date
       int z=id-1;
        String dd=d.toString();
r.register_room(rr,value1, value2, value3, value4, dd, "2:00", "12:00","FREE",z,id);

       
 out.println("<script>alert('Sent to database Successfully')</script>");     

           }}}}
%>
    
