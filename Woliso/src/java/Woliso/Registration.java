package Woliso;

import java.sql.*;
public class Registration {
    public void register_customer(String v1,String v2,String v3,String v4,String v5,String v6,String v7) throws ClassNotFoundException, SQLException
    {
        String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;
String name=null;
//Date d=new Date();
//out.println(d);
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    
        
        stmt.execute("INSERT into customer values('"+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"')");
        stmt.execute("INSERT into login values('"+v1+"','"+v3+"','"+v4+"','"+v6+"','"+v7+"','"+v5+"')");
    }
    public void register_room(String v1,String v2,String v3,String v4,String v5,String v6,String v7,String v8,String v9,int z,int id) throws ClassNotFoundException, SQLException{
        String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;

	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    stmt.execute("INSERT into room values('"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v1+"')");
        stmt.execute("INSERT into room_assign values('"+v1+"','"+v6+"','"+v7+"','"+v8+"','"+v9+"','"+"Null"+"')");
 

String sql2="update value set ID="+"'"+id+"' where ID="+"'"+z+"'";
        stmt.execute(sql2);
   
    }
    public void room_assign(String v1,String v2,String v3,String v4,String v5,String v6) throws ClassNotFoundException, SQLException{
        String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;

	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    stmt.execute("INSERT into room_assign values('"+v1+"','"+v2+"','"+v3+"','"+v4+"','"+v5+"','"+v6+"')"); 
    }
    public void view_room() throws ClassNotFoundException, SQLException{
      String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;


	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    }
    public void canclel_assign(String RID,String Dates,String startTime,String endTime) throws ClassNotFoundException, SQLException{
        String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
Connection con=null;
Statement stmt=null;
String name=null;
//Date d=new Date();
//out.println(d);
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
    
        
        stmt.execute("DELETE FROM `room_assign` WHERE Room_ID='"+RID+"' AND Date='"+Dates+"' AND Start_time='"+startTime+"' AND End_time='"+endTime+"' AND Status='Occupied'");
        
    }
    public void conection() throws ClassNotFoundException, SQLException{
      
    String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
               Class.forName("com.mysql.jdbc.Driver");
	
}        
    }
    

