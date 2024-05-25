<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
    <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>        
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body 
{
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:purple;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}
.main
{
    margin-top:20px;
    margin-left:200px;
    font-size:20px;
    padding:0px 10px;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
 <script type="text/javascript">
 function complaintOpen()
 {
    $('#main').load("private_complaint.jsp"); 
 }
 function viewcomplaintOpen()
 {
    $('#main').load("user view_comp.jsp"); 
 }
 </script>
 <%
     String mlu=(String)session.getAttribute("mailu");
 %>
 <div class="sidenav">
    <h4><%out.print(mlu);%></h4>
    <a href="#" onclick="complaintOpen()">Private Complaint</a>
    <a href="user view_comp.jsp" onclick="viewcomplaintOpen()">view Complaint</a>
    <a style="margin-top:370px; margin-left:0px;" href="index.html">      
        <span class="glyphicon glyphicon-log-out"></span>LOG OUT
    </a>
 </div>
 <div class="main" id="main">
    Welcome
 </div>   
</body>
</html>
