/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mysqlC.conn;

/**
 *
 * @author dell-lap
 */
@WebServlet(urlPatterns = {"/Solution"})
public class Solution extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            ResultSet rst1,rst2;
            String sol=request.getParameter("solution");
          int id=Integer.parseInt(request.getParameter("cid"));
           rst1=stm.executeQuery("select * from complaintsassigned where complaintId='"+id+"' ");
            String u="";
            String pt="";
            String pd="";
        
            String cid="";
            if(rst1.next())
            {
                u=rst1.getString("custUsername");
                cid=rst1.getString("complaintId");
                pt=rst1.getString("prob_type");
                pd=rst1.getString("prob_desc");
                
                        
           
            }
            
            stm.executeUpdate("insert into solution values('"+cid+"','"+u+"','"+pt+"','"+pd+"','"+sol+"')");
             
      
            response.sendRedirect("completedAssgnmt.jsp");
        } catch(Exception e) {
            out.println(e);
            out.close();
        }
    }
   
  
}
