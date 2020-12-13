<%-- 
    Document   : Logout
    Created on : Mar 11, 2016, 1:38:58 AM
    Author     : dell-lap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%
HttpSession hs=request.getSession();

hs.removeAttribute("User");
hs.removeAttribute("sUser");
hs.removeAttribute("aUser");
hs.invalidate();

response.sendRedirect("index.jsp");           

%>
    </body>
</html>
