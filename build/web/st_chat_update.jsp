<%-- 
    Document   : chat_update
    Created on : 26 Aug, 2022, 2:23:17 PM
    Author     : prabha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String chat=request.getParameter("chat");
            int cid=Integer.parseInt(request.getParameter("cid"));
            try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("update private set chat='"+chat+"' where id='"+cid+"'");
                    response.sendRedirect("station sidenav.jsp");
                }
                catch(Exception e)
               {            
                   out.print(e);
               }
        %>
    </body>
</html>
