<%-- 
    Document   : user jsp
    Created on : 22 Aug, 2022, 1:09:03 PM
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
            String password;
            int cid=Integer.parseInt(request.getParameter("cid"));
            password=request.getParameter("password");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from private where id='"+cid+"'");
                while(rs.next())
                {
                    if(password.equals(rs.getString(2)))
                    {
                        out.print("<table class='table'>");
                        out.print("<tr><th>Complaint ID</th><th>Complaint Type</th><th>Complaint</th><th>Complaint Location</th><th>Time</th><th>Status</th><th>Station Name</th><th>CHAT</th></tr>");
                        out.print("<tr><td><form action='chat_update.jsp' method='post'><input type='text' name='cid' value='"+rs.getInt(1)+"' readonly></td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td>"
                                + "<td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td><textarea name='chat'>"+rs.getString(9)+"U: </textarea></td><td><input type='submit' class='btn btn-info' value='UPDATE'></form></td></tr>");
                        out.print("</table>");
                    }
                }
            }
            catch(Exception e)
            {
              out.print(e);
            } 
%>
    </body>
</html>