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
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


public class completed extends HttpServlet {

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
         int cid1=Integer.parseInt(request.getParameter("cid"));   
           DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String t=String.valueOf(dateFormat.format(new Date()));   
            stm.executeUpdate("update complaintsassigned set f_time='"+t+"' , EnggStatus='1' where  complaintId='"+cid1+"'");
           // stm.executeUpdate("insert into complaintsassigned values('"+sol+"')");
           // stm.executeUpdate("insert into complaints values('"+id+"','"+u+"','"+pt+"','"+pd+"','"+area+"','"+contact+"','"+address+"','"+t+"','0')");
            response.sendRedirect("completedAssgnmt.jsp");
        } catch(Exception e) {
            out.println(e);
            out.close();
        }
    }
}
