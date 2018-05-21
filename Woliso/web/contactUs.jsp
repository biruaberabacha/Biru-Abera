<%@page import="java.sql.*"%>
<html>
    <%@page import="Woliso.Registration" %>
<head>
	<title>online ambo University class booking system</title>
	<link href="menu.css" rel=stylesheet>
	<script language=JavaScript src="scripts/menu.js"></script>
	<script language=JavaScript src="scripts/menu_hier.js"></script>
	<script language="JavaScript" src = "scripts/myscript.js"></script>
	<script language="JavaScript" type="text/javascript" 	src="scripts/sidebar.js"></script>	
	<style>
	body {
		font: 11px Arial,Verdana,Helvetica,sans-serif;
	}
.style15 {font-size: 9px}
    .style16 {font-family: "Times New Roman", Times, serif}
    .style10 {font-family: "Monotype Corsiva"; font-size: 16px; color: #0000FF; }
.style11 {	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
	color: #990000;
	font-size: 18px;
}
.style12 {color: #0000FF; font-style: italic; font-family: "Times New Roman", Times, serif;}
    </style>
</head>

	<div align="left"></div>

<body background="images/class.PNG" onload = "startTransition()">
<img src="images/ambo1.JPG" name="image1" width="100%" height="30%"><br><br><br><br><br>
	
	<table bgcolor="#99cccc" border="0" cellpadding="0" cellspacing="0" align="center" width="875">
		<tr>
		  <td width="34%" height="243"><ul>
	        <li>our organization is ready to serve you all day and night with highly talented services. we invite you with absolute kindness to be our customer.</li>
              <li>what makes us different is to believe  customers must get what he  spent.s</li>
		      <li>when we invite you to visits us, it's after we are well prepared to serve all you needs. </li>
		      <li>Give us a call as you start your trip so that we welcome you. </li>
		  </ul></td>
	      <td width="30%" height="243" align="center"><img src="pho/ac.png" width="216" height="217"></td>
	      <td width="36%" height="25" rowspan="2" align="center" valign="top">
		  
				<form name="commentForm" method="post" action="contactUs.jsp">
                                    <p class="style10"><marque><strong>Your comment is a key for our successes	....	</strong></marque>				</p>
					<table width="303" height="338">
						<tr>
							<td width="94" align="right">First-name:</td><td width="197"><input type="text" name="fName" placeholder="first name" /></td>
						</tr>
						<tr>
							<td align="right">Last name:</td>
							<td><input type="text" name="lName" placeholder="last name"/></td>
						</tr>
						<tr>
							<td align="right">E-mail: </td>
							<td><input type="text" name="email" placeholder="your email"/></td>
						</tr>
						<tr>
							<td height="53" align="right">Select your country: </td>
							<td><select name="country" >
							<option name="option1"  selected="selected" value="">---Select from the country--</option>
							<option> Afghanistan</option>
							<option> Albania</option>
							<option> Algeria</option>
							<option> American Samoa</option>
							<option> Andorra</option>
							<option> Angola</option>
							<option> Anguilla</option>
							<option> Antarctica</option>
							<option> Antigua and Barbuda</option>
							<option> Argentina</option>
							<option> Armenia</option>
							<option> Aruba</option>
							<option> Australia</option>
							<option> Austria</option>
							<option> Azerbaijan</option>
							<option> Bahamas</option>
							<option> Bahrain</option>
							<option> Bangladesh</option>
							<option> Barbados</option>
							<option> Belarus</option>
							<option> Belgium</option>
							<option> Belize</option>
							<option> Benin</option>
							<option> Bermuda</option>
							<option> Bhutan</option>
							<option> Bolivia</option>
							<option> Bosnia</option>
							<option> Botswana</option>
							<option> Bouvet Island</option>
							<option> Brazil</option>
							<option> Brunei Darussalam</option>
							<option> Bulgaria</option>
							<option> Burkina Faso</option>
							<option> Burundi</option>
							<option> Cambodia</option>
							<option> Cameroon</option>
							<option> Canada</option>
							<option> Caicos Islands</option>
							<option> Cape Verde</option>
							<option> Cayman Islands</option>
							<option> Central African Rep.</option>
							<option> Chad</option>
							<option> Chile</option>
							<option> China</option>
							<option> Christmas Island</option>
							<option> Cocos Islands</option>
							<option> Colombia</option>
							<option> Comoros</option>
							<option> Congo</option>
							<option> Cook Islands</option>
							<option> Costa Rica</option>
							<option> Cote D'Ivoire</option>
							<option> Croatia</option>
							<option> Cuba</option>
							<option> Cyprus</option>
							<option> Czech Republic</option>
							<option> Czechoslovakia</option>
							<option> Denmark</option>
							<option> Djibouti</option>
							<option> Dominica</option>
							<option> Dominican Republic</option>
							<option> East Timor</option>
							<option> Ecuador</option>
							<option> Egypt</option>
							<option> El Salvador</option>
							<option> Equatorial Guinea</option>
							<option> Eritrea</option>
							<option> Estonia</option>
							<option> Ethiopia</option>
							<option> Falkland Islands</option>
							<option> Faroe Islands</option>
							<option> Fiji</option>
							<option> Finland</option>
							<option> France</option>
							<option> French Guiana</option>
							<option> French Polynesia</option>
							<option> French Sth Ter.</option>
							<option> Gabon</option>
							<option> Gambia</option>
							<option> Georgia</option>
							<option> Germany</option>
							<option> Ghana</option>
							<option> Gibraltar</option>
							<option> Great Britain (UK)</option>
							<option> Greece</option>
							<option> Greenland</option>
							<option> Grenada</option>
							<option> Guadeloupe</option>
							<option> Guam</option>

							<option> Guatemala</option>
							<option> Guinea</option>
							<option> Guinea-Bissau</option>
							<option> Guyana</option>
							<option> Haiti</option>
							<option> Honduras</option>
							<option> Hong Kong</option>
							<option> Hungary</option>
							<option> Iceland</option>
							<option> India</option>
							<option> Indonesia</option>
							<option> Iran</option>
							<option> Iraq</option>
							<option> Ireland</option>
							<option> Israel</option>
							<option> Italy</option>
							<option> Jamaica</option>
							<option> Japan</option>
							<option> Jordan</option>
							<option> Kazakhstan</option>
							<option> Kenya</option>
							<option> Kiribati</option>
							<option> Korea (North)</option>
							<option> Korea (South)</option>
							<option> Kuwait</option>
							<option> Kyrgyzstan</option>
							<option> Laos</option>
							<option> Latvia</option>
							<option> Lebanon</option>
							<option> Lesotho</option>
							<option> Liberia</option>
							<option> Libya</option>
							<option> Liechtenstein</option>
							<option> Lithuania</option>
							<option> Luxembourg</option>
							<option> Macau</option>
							<option> Macedonia</option>
							<option> Madagascar</option>
							<option> Malawi</option>
							<option> Malaysia</option>
							<option> Maldives</option>
							<option> Mali</option>
							<option> Malta</option>
							<option> Marshall Islands</option>
							<option> Martinique</option>
							<option> Mauritania</option>
							<option> Mauritius</option>
							<option> Mayotte</option>
							<option> Mexico</option>
							<option> Micronesia</option>
							<option> Moldova</option>
							<option> Monaco</option>
							<option> Mongolia</option>
							<option> Montserrat</option>
							<option> Morocco</option>
							<option> Mozambique</option>
							<option> Myanmar</option>
							<option> Namibia</option>
							<option> Nauru</option>
							<option> Nepal</option>
							<option> Netherlands</option>
							<option> Netherlands Antilles</option>
							<option> New Caledonia</option>
							<option> New Zealand</option>
							<option> Nicaragua</option>
							<option> Niger</option>
							<option> Nigeria</option>
							<option> Niue</option>
							<option> Norfolk Island</option>
							<option> Norway</option>
							<option> Oman</option>
							<option> Pakistan</option>
							<option> Palau</option>
							<option> Panama</option>
							<option> Papua New Guinea</option>
							<option> Paraguay</option>
							<option> Peru</option>
							<option> Philippines</option>
							<option> Pitcairn</option>
							<option> Poland</option>
							<option> Portugal</option>
							<option> Puerto Rico</option>
							<option> Qatar</option>
							<option> Reunion</option>
							<option> Romania</option>
							<option> Russian Federation</option>
							<option> Rwanda</option>
							<option> Saint Kitts - Nevis</option>
							<option> Saint Lucia</option>
							<option> Samoa</option>
							<option> San Marino</option>
							<option> Sao Tome - Principe</option>
							<option> Saudi Arabia</option>
							<option> Senegal</option>
							<option> Seychelles</option>
							<option> Sierra Leone</option>
							<option> Singapore</option>
							<option> Slovak Republic</option>
							<option> Slovenia</option>
							<option> Solomon Islands</option>
							<option> Somalia</option>
							<option> South Africa</option>
							<option> Spain</option>
							<option> Sri Lanka</option>
							<option> St. Helena</option>
							<option> St. Pierre</option>
							<option> Sudan</option>
							<option> Suriname</option>
							<option> Svalbard</option>
							<option> Swaziland</option>
							<option> Sweden</option>
							<option> Switzerland</option>
							<option> Syria</option>
							<option> Taiwan</option>
							<option> Tajikistan</option>
							<option> Tanzania</option>
							<option> Thailand</option>
							<option> Togo</option>
							<option> Tokelau</option>
							<option> Tonga</option>
							<option> Tobago</option>
							<option> Trinidad</option>
							<option> Tunisia</option>
							<option> Turkey</option>
							<option> Turkmenistan</option>
							<option> Turks</option>
							<option> Tugalu</option>
							<option> Uganda</option>
							<option> Ukraine</option>
							<option> United Arab Emirates</option>
							<option> United Kingdom</option>
							<option>United States</option>
							<option> Uruguay</option>
							<option> USSR (former)</option>
							<option> Uzbekistan</option>
							<option> Vanuatu</option>
							<option> Vatican City State</option>
							<option> Venezuela</option>
							<option> Vietnam</option>
							<option> Virgin Islands (G.B.)</option>
							<option> Virgin Islands (U.S.)</option>
							<option> Wallis and Futuna Is.</option>
							<option> Western Sahara</option>
							<option> Yemen</option>
							<option> Yugoslavia</option>
							<option> Zaire</option>
							<option> Zambia</option>
							<option> Zimbabwe</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="2"><br/>
							If you have any further comments, please enter them below:<br />
							<textarea name="comment" rows="7" cols="35"></textarea></td>
						</tr><tr><td>date:<input type="text" name="date" placeholder="enter date"/></td></tr>
						<tr>
							<td height="26" colspan="2"><input name="submit" type="submit" value="Submit your comment"onClick="return validate();"/>         
							<input name="reset" type="reset" value="clear comments" /></td>
						</tr>
					</table>
		  </form>		  </td>
	  </tr>
		<tr>
		  <td height="13" colspan="2">          
		    <blockquote>
		      <blockquote>
		        <p><span class="style10"><span class="style11">Ambo town electric billing system</span><span class="style12"><br>
                      <br>
Ambo,Ethiopia </span><span class="style8"><br>
    <strong>Po.Box :</strong>123<br>
    <strong>Tel :</strong> +251 12367345 <br>
    <strong>Fax :</strong> +251 12364588<br>
    <strong>E-mail :</strong> classbooking@yahoo.com</span> </span></p>
		      </blockquote>
	      </blockquote></td>
	  </tr>
		<tr>
		  <td height="25" colspan="3" align="center"><p class="style16 style15">Copyright &copy 2018 IT MSc 1<sup>st</sup> year student Computing Solutions PLC. All Rights Reserved </p>				</td>
	    </tr>
</table>
</body>
<script language="JavaScript" type="text/javascript">
		
		//function to check that all required values have been entered on the form.
		function validate()
		{
			//theForm=window.document.feed;
			theForm = document.commentForm;
			
			if (theForm.fName.value == '') 
			{
				alert('Enter first name please');
				theForm.fName.focus();
				return false;
			} 
			else if (theForm.lName.value == '') 
			{
				alert('Enter Your last Name please');
				theForm.lName.focus();
				return false;
			} 
                        else if (theForm.email.value == '') 
			{
				alert('Enter Your email please');
				theForm.email.focus();
				return false;
			} 
                        else if (theForm.comment.value == '') 
			{
				alert('Enter Your comment please');
				theForm.comment.focus();
				return false;
			} 
		
			else if (theForm.country.value == '') 
			{
				alert('Select your country');
				theForm.country.focus();
				return false;
			} 
			else
			{
				return true;
			}
		}
	</script>
        
        
        <%if("POST".equalsIgnoreCase(request.getMethod())){
       
            if(request.getParameter("submit")!=null){
              if(request.getParameter("submit")!="submit"){
            Registration r=new Registration();
            
String mysqlconnector="jdbc:mysql://localhost:3306/woliso";//to assign the location of database
Connection con=null;
Statement stmt=null;

	 Class.forName("com.mysql.jdbc.Driver");// to call driver to connect with database
	 con=DriverManager.getConnection(mysqlconnector,"root","");// to connect with database
	 stmt=con.createStatement();
    
      // to recieve the value from the form
       
	 String Fname=request.getParameter("fName");
	 String Lname=request.getParameter("lName");
         String Email=request.getParameter("email");
	 String country=request.getParameter("country");
          String comment=request.getParameter("comment");
	 String date=request.getParameter("date");
           
    
r.comment(Fname,Lname, Email, country, comment, date);

       
 out.println("<script>alert('Thank you for your comment!')</script>");     

           }}}
%>
	