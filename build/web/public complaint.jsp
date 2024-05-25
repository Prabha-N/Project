<%-- 
    Document   : public complaint
    Created on : 30 Aug, 2022, 11:13:10 AM
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
            String usn,complaint,loc;
            long mob_no;
            usn=request.getParameter("usrname");
            complaint=request.getParameter("complaint");
            loc=request.getParameter("loc");
            mob_no=Long.parseLong(request.getParameter("mob_no"));
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("insert into public(usn,mob_no,complaint,loc) values('"+usn+"','"+mob_no+"','"+complaint+"','"+loc+"')");
                    response.sendRedirect("index.html");
                }
                catch(Exception e)
               {
                   out.print(e);
               }
           }
            
        %>

    </body>
</html>