
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
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

<form bgcolor="#99cccc" id="form1" name="form1" method="post" action="Booking.jsp" background-image=url("pho/13.jpg")>
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

<form bgcolor="#99cccc" id="form1" name="form1" method="post" action="Booking.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Register Room here!!!</h2></i> 
		 <table bgcolor="pink" width="550" cellspacing="" cellpadding="2px" height="100%">
		
		<tr><td align="right"><strong>Room Number:</strong></td><td width="300">
			<select name="o" size="0" required>
                            <option value="">---Select-Room number---</option>
                            <% 
                                for(int i=1;i<=30;i++){
                                    
                                
                                    String val="ROOM"+i;
                                
                            
                            %>
					  
                            <option value="<% out.print(val);%>"><% out.print(val) ;%></option>
                                          
                                          
                                          <% }%>
					  </select><font size="2">
				</td></tr>
		
		<tr>
           <td align="right"><strong>Room Size:</strong></td><td width="300">
			<select name="p" size="0" required>
					  <option value="">---Select-Room size---</option>
					  <option value="40 students">40 students</option>
					  <option value="60 students">60 students</option>
					 	  <option value="30 students">30 students</option>
                                                  <option value="20 students">20 students</option>
					 </select><font size="2">
				</td>
                </tr><tr><td align="right"><strong>Block Name:</strong></td><td width="300">
			<select name="q" size="0" required>
					  <option value="">---Select-block name---</option>
					  <option value="OLD BLOCK">OLD BLOCK</option>
					  <option value="SMART CLASS">SMART CLASS</option>
					  
					 	  </select><font size="2"></td>
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
             <td align="right"><input type="submit" name="ros" value="Register" /> 
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

<%if("POST".equalsIgnoreCase(request.getMethod())){
         
            
            if(request.getParameter("submit")!=null){
              if(request.getParameter("submit")!="submit"){
             String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;
int xx=0;
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
         
         String sql5="Select * from Customer where ID='"+v3+"'";
         ResultSet rs5=stmt.executeQuery(sql5);
         while(rs5.next()){
               xx++;
           }
         if(xx>=1){
             out.println("<script>alert('Customer of this ID number is Registered  before  this time')</script>");
         }
         else{
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

out.println("<script>alert('Sent to database Successfully')</script>"); 
              }
              }}}
            
               
              
            %>
 
<%if("POST".equalsIgnoreCase(request.getMethod())){
         
            String name=null;
            if(request.getParameter("ros")!=null){
              if(request.getParameter("ros")!="ros"){
String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;

	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    
     String sql,rn,bn;
        int id=0,ss=0;
        sql="select * from value";
        ResultSet rs1,rs=stmt.executeQuery(sql);
        while(rs.next()){
            id=rs.getInt("ID");
            id+=1;
        }
      
        String st="8:00AM",et="6:00PM",s="Free";
	 String v1=request.getParameter("o");
	 String v2=request.getParameter("p");
         String v3=request.getParameter("q");
	 String v4=request.getParameter("r");
           String sql1="Select * from room where Room_Number='"+v1+"'";
           rs1=stmt.executeQuery(sql1);
           while(rs1.next()){
            rn=rs1.getString("Room_Number");
            bn=rs1.getString("Block_Name");
           if(rn.equals(v1) && bn.equals(v3)){
               ss++;
           }
        }
           if(ss>=1){
               out.println("<script>alert('This room is Registered before this time')</script>");
           }
           else{
	 String r="RID/"+id+"/10";

PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into room values(?,?,?,?,?)");
PreparedStatement pst1=(PreparedStatement)con.prepareStatement("INSERT into room_assign values(?,?,?,?,?,?,?,?)");
pst.setString(1, v1);
pst.setString(2, v2);
pst.setString(3, v3);
pst.setString(4, v4);
pst.setString(5, r);
pst.executeUpdate();
int z=id-1;
String sql2="update value set ID="+"'"+id+"' where ID="+"'"+z+"'";
        stmt.executeUpdate(sql2);
        pst.setString(1, r);
 out.println("<script>alert('Sent to database Successfully')</script>");     
        Date d= new Date();
       
        String dd=d.toString();
pst1.setString(1, r);
pst1.setString(2, dd);
pst1.setString(3, "8:00AM");
pst1.setString(4, "6:00PM");
pst1.setString(5, "FREE");
pst1.setString(6, "8:00AM");
pst1.setString(7, "6:00PM");
pst1.setString(8, "FREE");
pst1.executeUpdate(); 
           }}}}
%>
    
