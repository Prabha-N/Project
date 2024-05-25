<%-- 
    Document   : jdbc
    Created on : 12 Aug, 2022, 9:36:14 PM
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
            String Email,Password,Address,Station_name,Station_ID;
            int Pincode;
            long Telephone_No;
            long Contact_No;
            Email=request.getParameter("Email");
            Password=request.getParameter("Password");
            Address=request.getParameter("Address");
            Pincode=Integer.parseInt(request.getParameter("Pincode"));
            Station_name=request.getParameter("Station_name");
            Station_ID=request.getParameter("Station_ID");
            Telephone_No=Long.parseLong(request.getParameter("Telephone_No"));
            Contact_No=Long.parseLong(request.getParameter("Contact_No")); 
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("insert into station values('"+Email+"','"+Password+"','"+Address+"','"+Station_name+"','"+Station_ID+"','"+Pincode+"','"+Telephone_No+"','"+Contact_No+"')");
                    response.sendRedirect("Station login page.html");
                }
                catch(Exception e)
                {
                      out.print(e);
                }
            
        %>
    </body>
</html>