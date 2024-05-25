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
    </head>
    <body>
         <%
            String username,password;
            username=request.getParameter("uname");
            password=request.getParameter("password");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select Password from user where Email='"+username+"'");
                if(rs.next())
            {
                    if(password.equals(rs.getString(1)))
                {
               
                        session.setAttribute("mailu",username);
                        response.sendRedirect("user sidenav.jsp");
                }
                else
                {
                    out.print("Logged out");
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