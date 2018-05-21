var showdate		= "yes"		// SHOW THE DATE ON THE PAGE
var dateLR		= "right"	// DATE LEFT OR RIGHT
var dateX		= "610"		// DATE X LOCATION
var dateY		= "60"		// DATE Y LOCATION
if (showdate == "yes") {

document.write('<div id="date-location" style="'+dateLR+': '+dateX+'px; color:khaki; font-family:Elephant; margin-right:-15%; POSITION: absolute; TOP: '+dateY+'px">');
var d=new Date()
var weekday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December")
document.write("<font face = 'arial' size = +1><nobr>" + weekday[d.getDay()] + " ")
document.write(d.getDate() + ". ")
document.write(monthname[d.getMonth()] + " ")
document.write(d.getFullYear())
document.write("</nobr><br></span>")
document.write('</div>');

}
