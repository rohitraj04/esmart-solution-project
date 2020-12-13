/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.sql.*;
import mysqlC.conn;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*; 

/**
 *
 * @author  virus04
 */

public class MailPage123 extends HttpServlet {

    static String email="";
    static int code=0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            HttpSession hs=request.getSession();
            email=(String)hs.getAttribute("email");
            code=(Integer)hs.getAttribute("code");
            
           // String sender_email = "services.hdcorp@gmail.com"
            String sender_email = "service.esmart@gmail.com",
			//sender_password = "orangesea",
                    sender_password = "No1Decode",
			sender_host = "smtp.gmail.com",
			sender_port = "587",//465 587
			reciever_id = email,
			subject_to_be_given = "E-Smart Solution.",
			message_mi = "Your activation code is "+code;

			Properties props = new Properties();
			 props.put("mail.smtp.user", sender_email);
			 props.put("mail.smtp.host", sender_host);
			 props.put("mail.smtp.port", sender_port);
			 props.put("mail.smtp.starttls.enable","true");
			 props.put("mail.smtp.auth", "true");
			 //props.put("mail.smtp.debug", "true");
			 props.put("mail.smtp.socketFactory.port",sender_port);
			 props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			// props.put("mail.smtp.socketFactory.fallb","false");
                          props.put("mail.smtp.socketFactory.fallb","true");

			 SecurityManager security = System.getSecurityManager();

			 
			 Authenticator auth = new SMTPAuthenticator2();
			 Session session = Session.getInstance(props, auth);
			 //session.setDebug(true);

			 MimeMessage msg = new MimeMessage(session);
			 msg.setText(message_mi);
			 msg.setSubject(subject_to_be_given);
			 msg.setFrom(new InternetAddress(sender_email));
			 msg.addRecipient(Message.RecipientType.TO,new InternetAddress(reciever_id));
                         Transport.send(msg);
			 
	
response.sendRedirect("register2.jsp");
            
            
            }
        
        catch(Exception e)
        { 
        out.println(e+"\n"+e.getLocalizedMessage());
        }
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}


class SMTPAuthenticator2 extends javax.mail.Authenticator
{
	//String sender_email = "services.hdcorp@gmail.com",
		//	sender_password = "orangesea",
                      String sender_email = "service.esmart@gmail.com",
                               sender_password = "No1Decode",
			sender_host = "smtp.gmail.com",
			sender_port = "587",   //465
			reciever_id = MailPage123.email,
			subject_to_be_given = "check it now",
			message_mi = String.valueOf(MailPage123.code);
    
	public PasswordAuthentication getPasswordAuthentication()
	{
			return new PasswordAuthentication(sender_email, sender_password);
	}
}