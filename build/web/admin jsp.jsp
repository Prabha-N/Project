<%-- 
    Document   : admin jsp
    Created on : 19 Aug, 2022, 11:07:17 AM
    Author     : prabha
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>
    </head>
    <body>
<% 
String username,password;
username=request.getParameter("uname");
password=request.getParameter("password");
if((username.equals("admin")) && (password.equals("1808")))

{
    response.sendRedirect("side navbar.html");
}
else
{
    out.print("Invalid Username and Password");
}
%>
    </body>
</html>
