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
import javax.servlet.http.HttpSession;
import mysqlC.conn;
/**
 *
 * @author  virus04
 */
@WebServlet(name = "Assign", urlPatterns = {"/Assign"})
public class Assign extends HttpServlet {

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
            String u=(String)hs.getAttribute("sUser");
            conn ob=new conn();
            Connection con=ob.c();
            Statement stm=con.createStatement();
            
            String cid=request.getParameter("cid");
            String custUser=request.getParameter("user");
            String pt=request.getParameter("pt");
            String pd=request.getParameter("pd");
            String area=request.getParameter("area");
            String contact=request.getParameter("contact");
            String add=request.getParameter("add");
            String ct=request.getParameter("ct");
            String eid=request.getParameter("eId");
            
            stm.executeUpdate("update complaints set status='1' where complaint_id='"+cid+"'");
            
            ResultSet rst1=stm.executeQuery("select * from supervisor where username='"+u+"'");
            int sid=0;
            
            if(rst1.next())
            {
            sid=rst1.getInt("sup_id");
            }
            
            stm.executeUpdate("insert into complaintsassigned values('"+cid+"','"+custUser+"','"+add+"','"+area+"','"+eid+"','"+ct+"','','0','"+pt+"','"+pd+"','"+sid+"')");
            response.sendRedirect("asgndcomp.jsp");
            
        } catch(Exception e) {
            out.println(e);
            out.close();
        }
    }
}