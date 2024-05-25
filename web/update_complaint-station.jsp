<%-- 
    Document   : update_complaint-station
    Created on : 26 Aug, 2022, 12:39:45 PM
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
            String Station_name;
            int cid;
            Station_name=request.getParameter("Station_name");
            cid=Integer.parseInt(request.getParameter("cid"));
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("update private set station='"+Station_name+"', status='Complaint Transfered' where id='"+cid+"'");
                    response.sendRedirect("admin_private_complaint.jsp");
                }
                catch(Exception e)
               {
                   out.print(e);
               }
           }
            
        %>

    </body>
</html>
