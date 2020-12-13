/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mysqlC.conn;
import java.sql.*;

/**
 *
 * @author  virus04
 */
@WebServlet(name = "VCODE", urlPatterns = {"/VCODE"})
public class VCODE extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            HttpSession hs=request.getSession();
            conn ob=new conn();
            Connection con=ob.c();
            Statement stm=con.createStatement();
            ResultSet rst;
            String u=request.getParameter("user");
            String p=request.getParameter("pass");
            String vcode1=request.getParameter("vcode");
            String vcode2="";
            rst=stm.executeQuery("select * from user where username='"+u+"' and password='"+p+"'");
            
            if(rst.next())
            {
           
            vcode2=rst.getString("code");
          if(vcode2.equals(vcode1))
          {
            stm.executeUpdate("update user set status='1' where username='"+u+"'");
            hs.setAttribute("User", u);
            response.sendRedirect("userHome.jsp");
          }
            }
            else
            {
            response.sendRedirect("VCODE.jsp");
            }
            
            
        } catch(Exception e){ 
            out.println(e);
            out.close();
        }
    }

}