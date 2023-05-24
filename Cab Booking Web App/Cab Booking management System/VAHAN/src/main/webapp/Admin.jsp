<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <link rel="stylesheet" href="styles/Adminwelcome.css">
         <script src="https://kit.fontawesome.com/d13ee8b9fd.js" crossorigin="anonymous"></script>
         
         <style>
table,td{
border:2px solid black;
border-collapse:collapse;
padding:10px
}
</style>
</head>
<body>
<div class="admin">
   <div class="side-container">

    <div class="profile">
        <h3 style="color: white; padding-left: 90px;">Admin</h3>
        <hr>
        <img src="images/photo4 (2).jpg"/>
        <h3 style="color: white; padding-left: 40px;">Hello Abhilash</h3>
    </div>
    <div class="side-menu" style="padding-top: 20px;">
    <ul style="padding-left: 0px;">
        <li><button type="button" class="btn btn-secondary" onclick="dashboards()">Dashboard</button></li><br>
        <li><button type="button" class="btn btn-secondary" onclick="cab()">Cabs</button></li><br>
        <li><button type="button" class="btn btn-secondary" onclick="user()">Users</button></li><br>
        <li><button type="button" class="btn btn-secondary" onclick="driver()">Drivers</button></li><br>
    </ul>
    </div>
   </div>
   <div class="all-content" >
    <div class="dashboardd" id="dashboard">
   	 <div style="color: white; background-color: black; text-align: center;">
        <h1>Dashboard</h1>
      </div>
      <div>
    	<img src="images/fordashboard2.2.jpg"/>
    	<img src="images/fordashboard3.jpg"/>
  		</div>
 	 <div id="bookimg">
   	 <h1  style="color: white; background-color: black; text-align: center; border: 2px solid white;">Booking Page</h1>
    	<img src="images/fordashboard4.2.jpg"/>
 	 </div>
</div>



<div class="cabss" id="cabs" style="display: none;"> 
     <h1 style="color:white;background-color:purple;text-align:center">All Cabs</h1>
<table class="tababhi" >
<tr style="background-color:skyblue">
<td>Cab Type</td>
<td>Company Name</td>
<td>Cab Condition</td>
<td>Colour</td>
<td>Description</td>
</tr>

<%
try 
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vahan", "root", "admin");
java.sql.Statement st=con.createStatement();
ResultSet rs=((java.sql.Statement) st).executeQuery("select * from cabs");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("cab_Type") %></td>
<td><%=rs.getString("cab_Brand") %></td>
<td><%=rs.getString("Cab_Condition") %></td>
<td><%=rs.getString("Colour") %></td>
<td><%=rs.getString("cab_Description") %></td>
</tr>
<%
}
con.close();
}
catch (Exception e) 
{
   e.printStackTrace();
}
%>
</table>
</div>


<div class="userss" id="users" style="display: none;">
    <h1 style="color:white;background-color:purple;text-align:center">User Data</h1>
<table class="tababhi">
<tr style="background-color:skyblue">
<td>User Id</td>
<td>First Name</td>
<td>Last Name</td>
<td>Contact</td>
<td>Email</td>
<td>Password</td>
<td>Address</td>
</tr>

<%
try 
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vahan", "root", "admin");
java.sql.Statement st=con.createStatement();
ResultSet rs=((java.sql.Statement) st).executeQuery("select * from user");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("user_id") %></td>
<td><%=rs.getString("first_name") %></td>
<td><%=rs.getString("last_name") %></td>
<td><%=rs.getString("contact_no") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("password") %></td>
<td><%=rs.getString("address") %></td>
</tr>
<%
}
con.close();
}
catch (Exception e) 
{
   e.printStackTrace();
}
%>
</table>

</div>


<div class="driverss" id="drivers" style="display: none;">
     <h1 style="color:white;background-color:purple;text-align:center">Driver Data</h1>
<table class="tababhi" >
<tr style="background-color:skyblue">
<td>Driver Id</td>
<td>First Name</td>
<td>Last Name</td>
<td>Contact</td>
<td>Cab</td>
<td>Cab Number</td>
<td>Lisence Number</td>
<td>Email</td>
<td>Password</td>
<td>Address</td>
</tr>

<%
try 
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vahan", "root", "admin");
java.sql.Statement st=con.createStatement();
ResultSet rs=((java.sql.Statement) st).executeQuery("select * from driver");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("Driver_id") %></td>
<td><%=rs.getString("first_name") %></td>
<td><%=rs.getString("last_name") %></td>
<td><%=rs.getString("contact_no") %></td>
<td><%=rs.getString("Vehical_Type") %></td>
<td><%=rs.getString("Cab_Number") %></td>
<td><%=rs.getString("Lisence_No") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("password") %></td>
<td><%=rs.getString("address") %></td>
</tr>
<%
}
con.close();
}
catch (Exception e) 
{
   e.printStackTrace();
}
%>
</table>

</div>

   </div>


</div>


<script>
    function dashboards(){
        var db=document.getElementById('dashboard')
        if (db.style.display === "none") {
        db.style.display = "block";
      }

      var db=document.getElementById('cabs')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('users')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('drivers')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }
}


function cab(){
        var db=document.getElementById('cabs')
        if (db.style.display === "none") {
        db.style.display = "block";
      }

      var db=document.getElementById('dashboard')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('users')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('drivers')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }
}

function user(){
        var db=document.getElementById('users')
        if (db.style.display === "none") {
        db.style.display = "block";
      }

      var db=document.getElementById('dashboard')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('cabs')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('drivers')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }
}
function driver(){
        var db=document.getElementById('drivers')
        if (db.style.display === "none") {
        db.style.display = "block";
      }

      var db=document.getElementById('dashboard')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('cabs')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }

    var db=document.getElementById('users')
  if (db.style.display !== "none") {
     db.style.display = "none";
    }
}

</script>
</body>
 </body>
</html>