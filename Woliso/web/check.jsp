<%@page import="java.security.Security"%>
<%@page import="javax.crypto.spec.IvParameterSpec"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="javax.crypto.Cipher"%>
<%
   
    byte[] input;
    byte[] keyBytes="12345678".getBytes();
    byte[] ivByte="kumaaaba".getBytes();
    SecretKeySpec as=new SecretKeySpec(keyBytes, "DES");
   
    IvParameterSpec ivaa=new IvParameterSpec(ivByte);
    Cipher cipher;
    byte[] cipherText;
    int cipherTextLength;
   input="password".getBytes();
   cipher=Cipher.getInstance("DES/CTR/NoPadding");
   cipher.init(Cipher.ENCRYPT_MODE,as,ivaa);
   cipherText=new byte[cipher.getOutputSize(input.length)];
   cipherTextLength=cipher.update(input, 0, input.length, cipherText,0);
  out.println("after "+cipherText);
  

%> 
<%-- 
    Document   : newjsp
    Created on : May 10, 2018, 4:10:43 AM
    Author     : mage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
<script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "180";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}
//-->
</script>
<body>
<form action="<%=request.getRequestURL()%>" name="forma">
Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">
...
</form>
<script>
<!--
timer();
//-->
</script>
</body></html>
</html>



