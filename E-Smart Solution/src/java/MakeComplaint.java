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
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
/**
 *
 * @author  virus04
 */
@WebServlet(name = "MakeComplaint", urlPatterns = {"/MakeComplaint"})
public class MakeComplaint extends HttpServlet {

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
            String u=(String)hs.getAttribute("User");
            conn ob=new conn();
            Connection con=ob.c();
            Statement stm=con.createStatement();
            ResultSet rst1,rst2;
            rst1=stm.executeQuery("select * from user where username='"+u+"'");
            String address="",area="",contact="";
            String pt=request.getParameter("pt");
            String pd=request.getParameter("pd");
            
            if(rst1.next())
            {
            address=rst1.getString("address");
            area=rst1.getString("area");
            contact=rst1.getString("contact");
            }
            int id=0;
            rst2=stm.executeQuery("select MAX(complaint_id) as complaint_id FROM complaints");
                if(rst2.next())
                {
                id=rst2.getInt("complaint_id");
                }
                id++;
              DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String t=String.valueOf(dateFormat.format(new Date()));   
            stm.executeUpdate("insert into complaints values('"+id+"','"+u+"','"+pt+"','"+pd+"','"+area+"','"+contact+"','"+address+"','"+t+"','0')");
            hs.setAttribute("cid",id);
            response.sendRedirect("ComplaintMade.jsp");
            
            
        } catch(Exception e) {
            out.println(e);
            out.close();
        }
    }
}
