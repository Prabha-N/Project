<%-- 
    Document   : private_complaint
    Created on : 23 Aug, 2022, 12:57:01 PM
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
        <style type="text/css">
        body
        {
        background-color:grey;
        }
        fieldset
        {
        margin-top: 50px;
        margin-right:500px;
        margin-left:500px;
        border: 2px groove;
        border-radius: 20px;
        padding: 10px;
        }
        label
        {
            margin-top: 10px;
            color: white;
            text-align: center;
        }
        h1
        {
            color: white;
            text-align: center;
            font-variant: small-caps;
            letter-spacing: 2px;
            text-shadow: 2px 2px 2px black;
        }
        </style>
    </head>
    <body>
        <h1>Complaint Here</h1>
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/intern","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select max(id) from private");
                if(rs.next())
                {
                    out.print("<form action='private jsp.jsp' method='post'><fieldset>"
                            + "<label for='cid'>Id</label><input type='text' class='form-control' name='cid' value='"+(rs.getInt(1)+1)+"' readonly><br>"
                            + "<label for='password'>Password</label><input type='password' name='password' class='form-control'><br>"
                            + "<label for='complaint type'>Complaint Type</label><select name='complaint type' class='form-control'>"
                                    + "<option value='child abuse'>child abuse</option><br>"
                                    + "<option value='rape'>rape</option><br>"
                                    + "<option value='eve-teasing'>eve-teasing</option><br>"
                                    + "<option value='murder'>murder</option><br>"
                                    + "<option value='stealing case'>stealing case</option><br>"
                                    + "<option value='suicide'>suicide</option><br>"
                                    + "<option value='Missing cases'>Missing cases(eg:person or things)</option><br>"
                                    + "<option value='others'>others</option><br>"
                            + "</select>"
                            + "<label for='complaint'>Complaint</label><textarea name='complaint' class='form-control'></textarea><br>"
                            + "<label for='location'>Crime Location</label><input type='text' class='form-control' name='location'><br>"
                            + "<input type='submit' class='btn btn-danger btn-block' value='COMPLAINT'>"
                            + "</fieldset></form>");
                }
            }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
