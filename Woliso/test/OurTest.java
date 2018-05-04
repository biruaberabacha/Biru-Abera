/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.*;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Abdii-isaa
 */
public class OurTest {
    
    public OurTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    
     @Test
     public void book() throws Exception {
 String mysqlconnector="jdbc:mysql://localhost:3306/woliso";
 Connection con=null;
Statement stmt=null;	
            Class.forName("com.mysql.jdbc.Driver");    
	 con=(Connection) DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=(Statement) con.createStatement();
PreparedStatement pst=(PreparedStatement)con.prepareStatement("INSERT into customer values(?,?,?,?,?,?)");
PreparedStatement pst1=(PreparedStatement)con.prepareStatement("INSERT into login values(?,?,?,?,?,?)");
pst1.setString(1, "Biru");
pst1.setString(2, "004");
pst1.setString(3, "Biru");
pst1.setString(4, "004");
pst1.setString(5, "Biru");
pst1.setString(6, "004");
pst1.executeUpdate();
     }
       
}
