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
import java.sql.*;
import mysqlC.conn;

/**
 *
 * @author  virus04
 */
@WebServlet(name = "SupUpdate", urlPatterns = {"/SupUpdate"})
public class SupUpdate extends HttpServlet {

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
            
         conn ob=new conn();
         Connection con=ob.c();
         Statement stm=con.createStatement();
         String u=request.getParameter("user");
         String p=request.getParameter("pass");
         String name=request.getParameter("name");
         String add=request.getParameter("add");
         String contact=request.getParameter("contact");
         String area=request.getParameter("area");
         String email=request.getParameter("email");
         String sal=request.getParameter("salary");
         
stm.executeUpdate("update supervisor set password='"+p+"' , name='"+name+"' , address='"+add+"' , contact='"+contact+"' , salary='"+sal+"' , email='"+email+"' where username='"+u+"' ");
         
         response.sendRedirect("SupervisorInfo.jsp");
            
            
            
            
        } catch(Exception e) {
            out.println(e);
            out.close();
        }
    }

}
