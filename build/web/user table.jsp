<%-- 
    Document   : user table
    Created on : 19 Aug, 2022, 11:28:54 AM
    Author     : prabha
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>USER TABLE DISPLAY</title>
</head>
<body>
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from user");
            out.print("<table border=5>");
            out.print("<tr><th>username</th><th>Password</th><th>Address</th><th>Email</th><th>Phone_No</th></tr>");
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getLong(5)+"</td></tr>");
            }
            out.print("</table>");
        }
        catch(Exception e)
        {
            out.print(e);
        }
    %>
</body>
</html>