<%-- 
    Document   : request
    Created on : May 2, 2018, 9:01:15 AM
    Author     : Abdii-isaa
--%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.util.Date" %>
<%@page import="Woliso.Registration" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome</title>
        <%
       request.getSession(false);
       
       String rrr=session.getAttribute("type").toString();
       if(rrr.equals("Teacher"))
           response.sendRedirect("login.jsp");
       
    %>

	<!--sa calendar-->	
		<script type="text/javascript" src="js/datepicker.js"></script>
        <link href="css/demo.css"       rel="stylesheet" type="text/css" />
        <link href="css/datepicker.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
		//<![CDATA[

		/*
				A "Reservation Date" example using two datePickers
				--------------------------------------------------

				* Functionality

				1. When the page loads:
						- We clear the value of the two inputs (to clear any values cached by the browser)
						- We set an "onchange" event handler on the startDate input to call the setReservationDates function
				2. When a start date is selected
						- We set the low range of the endDate datePicker to be the start date the user has just selected
						- If the endDate input already has a date stipulated and the date falls before the new start date then we clear the input's value

				* Caveats (aren't there always)

				- This demo has been written for dates that have NOT been split across three inputs

		*/

		function makeTwoChars(inp) {
				return String(inp).length < 2 ? "0" + inp : inp;
		}

		function initialiseInputs() {
				// Clear any old values from the inputs (that might be cached by the browser after a page reload)
				document.getElementById("sd").value = "";
				document.getElementById("ed").value = "";

				// Add the onchange event handler to the start date input
				datePickerController.addEvent(document.getElementById("sd"), "change", setReservationDates);
		}

		var initAttempts = 0;

		function setReservationDates(e) {
				// Internet Explorer will not have created the datePickers yet so we poll the datePickerController Object using a setTimeout
				// until they become available (a maximum of ten times in case something has gone horribly wrong)

				try {
						var sd = datePickerController.getDatePicker("sd");
						var ed = datePickerController.getDatePicker("ed");
				} catch (err) {
						if(initAttempts++ < 10) setTimeout("setReservationDates()", 50);
						return;
				}

				// Check the value of the input is a date of the correct format
				var dt = datePickerController.dateFormat(this.value, sd.format.charAt(0) == "m");

				// If the input's value cannot be parsed as a valid date then return
				if(dt == 0) return;

				// At this stage we have a valid YYYYMMDD date

				// Grab the value set within the endDate input and parse it using the dateFormat method
				// N.B: The second parameter to the dateFormat function, if TRUE, tells the function to favour the m-d-y date format
				var edv = datePickerController.dateFormat(document.getElementById("ed").value, ed.format.charAt(0) == "m");

				// Set the low range of the second datePicker to be the date parsed from the first
				ed.setRangeLow( dt );
				
				// If theres a value already present within the end date input and it's smaller than the start date
				// then clear the end date value
				if(edv < dt) {
						document.getElementById("ed").value = "";
				}
		}

		function removeInputEvents() {
				// Remove the onchange event handler set within the function initialiseInputs
				datePickerController.removeEvent(document.getElementById("sd"), "change", setReservationDates);
		}

		datePickerController.addEvent(window, 'load', initialiseInputs);
		datePickerController.addEvent(window, 'unload', removeInputEvents);

		//]]>
		</script> 

</head>
    </head>
    <body>
          <img src="images/ambo1.JPG" height="30%" width="100%"/>
        <div id="jh">
        <form bgcolor="#99cccc" id="form1" name="form1" method="post" action="Cancelation.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Fill the following Field With Correct Information to cancel assigned class!!!</h2></i> 
		 <table bgcolor="khaki" width="550" cellspacing="" cellpadding="2px" height="100%">
		
		<tr><td align="right"><strong>Room ID:</strong></td><td>
			<input style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"type="text" name="roomID" id="h" required placeholder="Room ID" /></td>
		</tr>
		
		<tr>
           <td align="right"><strong>Start time     :</strong></td><td width="300">
			<select name="start" size="0" required style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-Time---</option>					 
					  <option value="2:00">2:00</option>
					  <option value="2:30">2:30</option>
                                          <option value="3:00">3:00</option>
					  <option value="3:30">3:30</option>
                                          <option value="4:00">4:00</option>
					  <option value="4:30">4:30</option>
                                          <option value="5:00">5:00</option>
					  <option value="5:30">5:30</option>
					 <option value="6:00">6:00</option>
					  <option value="6:30">6:30</option>
                                          <option value="7:00">7:00</option>
					  <option value="7:30">7:30</option>
                                           <option value="8:00">8:00</option>
					  <option value="8:30">8:30</option>
                                           <option value="9:00">9:00</option>
					  <option value="9:30">9:30</option>
                                          <option value="10:00">10:00</option>
					  <option value="10:30">10:30</option>
                                           <option value="11:00">11:00</option>
					  <option value="11:30">11:30</option>
                                           <option value="12:00">12:00</option>
					 </select><font size="2">
				</td>
                </tr>
                <tr>
           <td align="right"><strong>End time:</strong></td><td width="300">
			<select name="end" size="0" required style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-Time---</option>
					  <option value="2:00">2:00</option>
					  <option value="2:30">2:30</option>
                                          <option value="3:00">3:00</option>
					  <option value="3:30">3:30</option>
                                          <option value="4:00">4:00</option>
					  <option value="4:30">4:30</option>
                                          <option value="5:00">5:00</option>
					  <option value="5:30">5:30</option>
					 <option value="6:00">6:00</option>
					  <option value="6:30">6:30</option>
                                          <option value="7:00">7:00</option>
					  <option value="7:30">7:30</option>
                                           <option value="8:00">8:00</option>
					  <option value="8:30">8:30</option>
                                           <option value="9:00">9:00</option>
					  <option value="9:30">9:30</option>
                                          <option value="10:00">10:00</option>
					  <option value="10:30">10:30</option>
                                           <option value="11:00">11:00</option>
					  <option value="11:30">11:30</option>
                                           <option value="12:00">12:00</option>
					 </select><font size="2">
				</td>
                </tr>
                
                <tr><td align="right" ><strong>Date:</strong></td>
           <td width="300">
			<input required id="wow" name="date" type="text" class="w8em format-d-m-y highlight-days-67 "  value="" maxlength="20" readonly="readonly" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/>
           </td></tr>
		
		
		
			
                
		
			
		
		<tr><td>
                <tr><td></td>
             <td align="right"><input type="submit" name="submit" value="Cancel" /> 
              <td><input type="reset" name="cmdreset" value="Clear"/></td>
        </tr>
				
				
			
	
		
	</table></form>
            
        </div><div id="ve">
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
    
<a href="logout.jsp"><button>logout</button></a></div>
 
          
    </body>
</html>
<style> 
#jh
{
margin-left:50%; 
background-color:lightskyblue; 
font-size:20px;
margin-top: 8%;
margin-right:0%;

}
#ve
{
margin-left:0%; 
background-color:pink; 
font-size:20px;
margin-right:50%;
margin-top:-22%;


}
#wow{
   background: white; 
}
body{
    background-image: url("images/class.PNG");
}
</style>
  <%if("POST".equalsIgnoreCase(request.getMethod())){
         SimpleDateFormat df = new SimpleDateFormat("HH:mm");
        df.setTimeZone(TimeZone.getTimeZone("UTC"));
            String startTime=null;
 


Date d=new Date();

	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
            
            if(request.getParameter("submit")!=null){
              if(request.getParameter("submit")!="submit"){ 
                  
                  String RID=request.getParameter("roomID");
                 startTime=request.getParameter("start");
                String endTime=request.getParameter("end");
                String CID=request.getParameter("k");
                String Dates=request.getParameter("date");
                session=request.getSession();
            String name_of_user=session.getAttribute("login").toString(); 
       int counter=0;
       Date d1=df.parse(startTime);
       Date d2=df.parse(endTime);
       if(d1.getTime()>=d2.getTime())
         out.println("<script>alert('Impossible Time selection!')</script>");
       else{
           
          stmt=con.createStatement();
          String sql2;
      
       
            
             if(!stmt.executeQuery("Select * from room where Room_ID='"+RID+"'").next())
                 out.println("<script>alert('Invalid room ID!')</script>");
                  else{
                 if(Dates.isEmpty())
                     out.println("<script>alert('DATE IS REQUIRED TO GET CLASS PLS FILL IT!')</script>");
                 else{
          sql2="select * FROM `room_assign` WHERE Room_ID='"+RID+"' AND Date='"+Dates+"' AND Start_time='"+startTime+"' AND End_time='"+endTime+"' AND Status='Occupied'";
       rs=stmt.executeQuery(sql2);
       if(stmt.execute(sql2)){
           Registration register =new Registration();
               register.canclel_assign(RID, Dates, startTime, endTime);
        out.println("<script>alert('Room is canceled from assignment')</script>");
        }
       else
           out.println("<script>alert('This room is not assigned before!')</script>");
       
             }}}}}}
     %>  
     <link href="menu.css" rel=stylesheet>
	<script language=JavaScript src="scripts/menu.js"></script>
	<script language=JavaScript src="scripts/menu_hier.js"></script>
	<script language="JavaScript" src = "scripts/myscript.js"></script>
	<script language="JavaScript" type="text/javascript" 	src="scripts/sidebar.js"></script>
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