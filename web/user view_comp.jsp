<%-- 
    Document   : user view_comp
    Created on : 26 Aug, 2022, 12:57:38 PM
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
        <h1> view Complaint Here</h1>
        <% String un=(String)session.getAttribute("mailu"); %>
            <form action="user update_comp jsp.jsp" method="post">
                <fieldset>
                    <label for="cid">Id</label><input type="text" class="form-control" name="cid"><br>
                    <label for="password">Password</label><input type="password" name="password" class="form-control"><br>
                    <input type="submit" class="btn btn-danger btn-block" value="COMPLAINT">
                </fieldset>
            </form>
    </body>
</html>


