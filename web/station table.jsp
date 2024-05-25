<%-- 
    Document   : station table
    Created on : 19 Aug, 2022, 11:38:46 AM
    Author     : prabha
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STATION TABLE DISPLAY</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
Statement st=con.createStatement(); 
ResultSet rs=st.executeQuery("select * from station");
out.print("<table border=5>");
out.print("<tr><th>Email</th><th>Password</th><th>Address</th><th>Station_name</th><th>Station_ID</th><th>Pincode</th><th>Telephone_No</th><th>Contact_No</th></tr>");
while(rs.next())
{
 out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getInt(6)+"</td><td>"+rs.getLong(7)+"</td><td>"+rs.getLong(8)+"</td></tr>");
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

