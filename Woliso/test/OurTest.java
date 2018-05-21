
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.*;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import Woliso.Registration;

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

     @Test
     public void book() throws Exception {
 Registration  register=new Registration();
 register.ChangePassword("34", "kumaa");
 register.canclel_assign("RID/10/10", "13/5/2018", "2:00", "4:00");
 register.connection();
 register.register_customer("Biru Abera", "Male", "4545", "Admin", "0978787878", "b@gmail.com", "yesuus");
register.register_room("", "", "", "", "", "", "", "", "", 0, 0);
register.room_assign("", "", "", "", "", "");
register.view_room();
     }
       
}
