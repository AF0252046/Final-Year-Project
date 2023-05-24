<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    <script src="https://kit.fontawesome.com/d13ee8b9fd.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="styles/signin.css"/>
    <title>Login</title>
    
   
</head>
<body>

<div class="useradmin">
<div class="btn">
    <input type="button" value="User Login" onclick="show()"/>
    <input type="button" value="Admin Login" onclick="showAdmin()"/>
</div>
</div>


    <div class="boxx">
    <div class="signinall" id="userr">
    <div class="iconn">
        <i class="fa-solid fa-user-lock fa-2xl" style="color: #b418ec;"></i>
                <h3 style="padding-top: 10px;">User</h3>
    </div>
    <div class="forms">
        <form action="login" method="post">
            <div class="textboxes">
            <input type="email" placeholder=" Email" name="email" required />	<br/><br/>
            
            
            <input type="password" placeholder=" Password" name="pass" required/>	<br/><br/>  
            
            
            <input class="btn btn-primary" type="submit" value="Login">
        </div>
        </form>
        <div class="forgetpass">
            <a href="forgetpass.jsp" style="padding-left: 5px;">forget password?</a>
            <a href="register.jsp" style="padding-left: 20px;">Don't have an Account?Sign up</a>
        </div>
    </div>
</div>
<div class="signinall"  id="Admin" style="display: none;">
    <div class="iconn">
        <i class="fa-solid fa-user-lock fa-2xl" style="color: #b418ec;"></i>
                <h3 style="padding-top: 10px;">Admin</h3>
    </div>
    <div class="forms">
        <form action="AdminSevlet" method="post">
            <div class="textboxes">
            
            
            <input type="email" placeholder=" Email" name="email" required /><br/><br/>
            
            
            
            <input type="password" placeholder=" Password" name="pass" required/>	<br/><br/>  
            
            
            <input class="btn btn-primary" type="submit" value="Login">
        </div>
        </form>
    </div>
</div>

</div>

<script type="text/javascript">
function show(){ 
    
    var ab=document.getElementById('Admin')
 
  if (ab.style.display !== "none") {
     ab.style.display = "none"; 
      }



  var ab=document.getElementById('userr')
  if (ab.style.display === "none") {
     ab.style.display = "block";
      } 


}
function showAdmin(){  
    var ab=document.getElementById('userr')
    if(ab.style.display !== "none") {
     ab.style.display = "none";
      } 
    

  var ab=document.getElementById('Admin')
 
  if (ab.style.display === "none") {
     ab.style.display = "block"; 
      } 
}

</script>


</body>
</html>