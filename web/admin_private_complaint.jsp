<%-- 
    Document   : admin_private_complaint
    Created on : 25 Aug, 2022, 3:10:34 PM
    Author     : prabha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>        
        <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                Statement st=con.createStatement();
                ResultSet sr=st.executeQuery("select Station_name from station");
                out.print("<ul>");
                while(sr.next())
                {
                out.print("<li>"+sr.getString(1)+"</li>");
                }
                out.print("</ul>");
                ResultSet rs=st.executeQuery("select id,ct,complaint,cl,time from private where station is NULL");
                out.print("<table class='table'>");
                out.print("<tr><th>Complaint ID</th><th>Complaint Type</th><th>Complaint</th><th>Complaint Location</th><th>Time</th><th>Station Name</th></tr>");
                while(rs.next())
                {
                    out.print("<tr><td><form action='update_complaint-station.jsp' method='post'><input type='text' name='cid' value='"+rs.getInt(1)+"' readonly></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td>"
                            + "<td><input type='text' name='Station_name'></td><td><input type='submit' class='btn btn-info' value='UPDATE'></form></td></tr>");
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
