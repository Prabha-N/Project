<%-- 
    Document   : public_complaint table
    Created on : 27 Aug, 2022, 11:54:28 AM
    Author     : prabha
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PUBLIC COMPLAINT TABLE DISPLAY</title>
 <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>        
 <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <h1>PUBLIC COMPLAINTS</h1>
    <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from public");
            out.print("<table class='table'>");
            out.print("<tr><th>Date</th><th>Username</th><th>Phone No</th><th>Complaint</th><th>Crime Location</th></tr>");
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getLong(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
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