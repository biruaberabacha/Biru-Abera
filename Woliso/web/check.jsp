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