/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mysqlC;

import java.sql.*;

public class conn {
    
    
    public Connection c()throws Exception
    {
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myhw","root","raj");
        return con;
    }
    
}
