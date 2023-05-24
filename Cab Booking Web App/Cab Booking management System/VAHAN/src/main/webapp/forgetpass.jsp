<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
	.all{
	padding-left:40%;
	padding-top:15%;
	}
	.forget{
	padding-top:20px;
	 border:2px solid black;
	 border-radius:15px;
	 text-align:center;
	 width:300px;
	 height:300px;
	}
	</style>
</head>
<body>
<div class="all">
<div class="forget">
<form action="forgetpass" method="post">
<div class="mid">
<h4>Update Password</h4><br/><br/>
<input type="email" placeholder="Enter Email" name="email"/><br/><br/>

<input type="password" placeholder=" Enter New password" name="pass"/><br/><br/>

<button type="submit" class="btn btn-secondary">Submit</button>
</div>
</form>
</div>
</div>

</body>
</html>