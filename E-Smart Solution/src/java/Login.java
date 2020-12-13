/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import mysqlC.conn;
import javax.servlet.http.HttpSession;
/**
 *
 * @author  virus04
 */
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession hs=request.getSession();
            String s="";
            String t=request.getParameter("user_type");
            String u=request.getParameter("user");
            String p=request.getParameter("pass");
            
            Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myhw","root","raj");
        //out.println("breakpoint");
            Statement stm=con.createStatement();
            ResultSet rst;
            
            if(t.equals("USER"))
            {
               
            rst=stm.executeQuery("select * from user where username='"+u+"' and password='"+p+"'");
            if(rst.next())
            {
            
                s=rst.getString("status");
                if(s.equals("1"))
                {
                hs.setAttribute("User", u);
            response.sendRedirect("userHome.jsp");
            
                }
                else
                {
                response.sendRedirect("VCODE.jsp");
                }
               
            }
            else
            {
            response.sendRedirect("index.jsp");
            }
            
            }
            else
                if(t.equals("ADMIN"))
            {
            rst=stm.executeQuery("select * from admin where username='"+u+"' and password='"+p+"'");
            if(rst.next())
            {
                hs.setAttribute("aUser", u);
            response.sendRedirect("adminHome.jsp");
            }
            else
            {
            response.sendRedirect("index.jsp");
            }
            
            }
            
            else
                    if(t.equals("SUPERVISOR"))
            {
            rst=stm.executeQuery("select * from supervisor where username='"+u+"' and password='"+p+"'");
            if(rst.next())
            {
                hs.setAttribute("sUser", u);
            response.sendRedirect("supervisorHome.jsp");
            }
            else
            {
            response.sendRedirect("index.jsp");
            }
            
            }
            
            else
                    if(t.equals("ENGINEER"))
            {
            rst=stm.executeQuery("select * from engineer where username='"+u+"' and password='"+p+"'");
            if(rst.next())
            {
                hs.setAttribute("eUser", u);
            response.sendRedirect("engineerHome.jsp");
            }
            else
            {
            response.sendRedirect("index.jsp");
            }
            
            }    
            
        }
        
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
        finally {            
            out.close();
        }
    }
}
