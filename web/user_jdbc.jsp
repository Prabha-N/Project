<%-- 
    Document   : user_jdbc
    Created on : 12 Aug, 2022, 10:33:33 PM
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
            String username,Password,Address,Email;
            long Phone_No;
            username=request.getParameter("uname");
            Password=request.getParameter("password");
            Address=request.getParameter("City");
            Email=request.getParameter("Email");
            Phone_No=Long.parseLong(request.getParameter("number"));
            { 
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("insert into user values('"+username+"','"+Password+"','"+Address+"','"+Email+"','"+Phone_No+"')");
                }
                catch(Exception e)
               {
                   out.print(e);
               }
           }
            
        %>
 </body>
</html>