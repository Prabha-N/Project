<%-- 
    Document   : station sidenav
    Created on : 22 Aug, 2022, 4:12:29 PM
    Author     : prabha
--%>
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
  padding-top: 30px;
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
    margin-left:180px;
    font-size:20px;
    padding:0px 10px;
}
.icon
{
    margin-left:40px;
    border:none;
    border-radius:25px;
    height:100px;
    width:100px;
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
    $('#main').load("station_view_complaint.jsp"); 
 }
 function stationcomplaintOpen()
 {
    $('#main').load("public_complaint table.jsp"); 
 }
 </script>
 <%
     String mls=(String)session.getAttribute("mails");
 %>
 <div class="sidenav">
     <img class="icon" src="./images/icon pic.png">
     <h4><%out.print(mls);%></h4>
     <a href="public_complaint table.jsp" onclick="stationcomplaintOpen()">public Complaint</a>
     <a href="station_view_complaint.jsp" onclick="complaintOpen()"> Private View Complaints</a>
     <a style="margin-top:500px; margin-left:0px;" href="index.html">
      <span class="glyphicon glyphicon-log-out"></span>LOG OUT
  </a>
     <div class="main" id="main">
         
         <div id="main-in">
             welcome
     </div>
  </div> 
 </div>   
</body>
</html>
