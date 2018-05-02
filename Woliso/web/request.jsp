<%-- 
    Document   : request
    Created on : May 2, 2018, 9:01:15 AM
    Author     : Abdii-isaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome</title>


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
        <div id="jh">
        <form bgcolor="#99cccc" id="form1" name="form1" method="post" action="custreg.jsp" background-image=url("pho/13.jpg")>
	<i><h2>Fill the following Field With Correct Information!!!</h2></i> 
		 <table bgcolor="khaki" width="550" cellspacing="" cellpadding="2px" height="100%">
		
		<tr><td align="right"><strong>Room ID:</strong></td><td>
			<input style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"type="text" name="h" id="h" required placeholder="Room ID" pattern="[A-Za-z ]{3,}"/></td>
		</tr>
		
		<tr>
           <td align="right"><strong>Start time     :</strong></td><td width="300">
			<select name="i" size="0" required style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-Time---</option>
					  <option value="8:00AM">8:00AM</option>
					  <option value="8:30AM">8:30AM</option>
                                          <option value="9:00AM">9:00AM</option>
					  <option value="9:30AM">9:30AM</option>
                                          <option value="10:00AM">10:00AM</option>
					  <option value="10:30AM">10:30AM</option>
                                          <option value="11:00AM">11:00AM</option>
					  <option value="11:30AM">11:30AM</option>
					 <option value="12:00PM">12:00PM</option>
					  <option value="12:30PM">12:30PM</option>
                                          <option value="1:00PM">1:00PM</option>
					  <option value="1:30PM">1:30PM</option>
                                           <option value="2:00PM">2:00PM</option>
					  <option value="2:30PM">2:30PM</option>
                                           <option value="3:00PM">3:00PM</option>
					  <option value="3:30PM">3:30PM</option>
                                          <option value="4:00PM">4:00PM</option>
					  <option value="4:30PM">4:30PM</option>
                                           <option value="5:00PM">5:00PM</option>
					  <option value="5:30PM">5:30PM</option>
                                           <option value="6:00PM">6:00PM</option>
					 </select><font size="2">
				</td>
                </tr>
                <tr>
           <td align="right"><strong>End time:</strong></td><td width="300">
			<select name="j" size="0" required style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;">
					  <option value="">---Select-Time---</option>
					  <option value="8:00AM">8:00AM</option>
					  <option value="8:30AM">8:30AM</option>
                                          <option value="9:00AM">9:00AM</option>
					  <option value="9:30AM">9:30AM</option>
                                          <option value="10:00AM">10:00AM</option>
					  <option value="10:30AM">10:30AM</option>
                                          <option value="11:00AM">11:00AM</option>
					  <option value="11:30AM">11:30AM</option>
					 <option value="12:00PM">12:00PM</option>
					  <option value="12:30PM">12:30PM</option>
                                          <option value="1:00PM">1:00PM</option>
					  <option value="1:30PM">1:30PM</option>
                                           <option value="2:00PM">2:00PM</option>
					  <option value="2:30PM">2:30PM</option>
                                           <option value="3:00PM">3:00PM</option>
					  <option value="3:30PM">3:30PM</option>
                                          <option value="4:00PM">4:00PM</option>
					  <option value="4:30PM">4:30PM</option>
                                           <option value="5:00PM">5:00PM</option>
					  <option value="5:30PM">5:30PM</option>
                                           <option value="6:00PM">6:00PM</option>
					 </select><font size="2">
				</td>
                </tr>
                <tr><td align="right"><strong>Customer ID Number:</strong></td><td width="300">
			<input type="text" name="k" id="k" placeholder="customers ID" required pattern=['a-z A-Z 0-9']{6,}  style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/></td>
		</tr>
                <tr><td align="right" ><strong>Date:</strong></td>
           <td width="300">
			<input id="wow" name="l" type="text" class="w8em format-d-m-y highlight-days-67 range-low-today"  value="" maxlength="20" readonly="readonly" style="width: 165px; margin-left: 15px; border: 3px double #CCCCCC; padding:5px 10px;"/>
           </td></tr>
		
		
		
			
                
		
			
		
		<tr><td>
                <tr><td></td>
             <td align="right"><input type="submit" name="submit" value="Send Request" /> 
              <td><input type="reset" name="cmdreset" value="Clear"/></td>
        </tr>
				
				
			
	
		
	</table></form>
            
        </div><div id="ve">
            <h1>Please check if the class is free or not!!</h1>
            <a href="view.jsp"><button>view</button></a></div>
 
          
    </body>
</html>
<style> 
#jh
{
margin-left:50%; 
background-color:lightskyblue; 
font-size:20px;
margin-right:0%;

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
</style>