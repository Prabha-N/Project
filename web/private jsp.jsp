<%-- 
    Document   : private jsp
    Created on : 25 Aug, 2022, 12:31:09 PM
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
            String ct,complaint,cl,ps;
            int id;
            ps=request.getParameter("password");
            ct=request.getParameter("complaint type");
            complaint=request.getParameter("complaint");
            cl=request.getParameter("location");
            id=Integer.parseInt(request.getParameter("cid"));
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("insert into private(id,ps,ct,complaint,cl) values('"+id+"','"+ps+"','"+ct+"','"+complaint+"','"+cl+"')");
                    response.sendRedirect("user sidenav.jsp");
                }
                catch(Exception e)
               {
                   out.print(e);
               }
           }
            
        %>

    </body>
</html>