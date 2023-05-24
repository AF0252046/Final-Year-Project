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

    <link rel="stylesheet" href="styles/register.css"/>
    <title>Sign in </title>
</head>
<body>

<div class="useradmin">
<div class="btn">
    <input type="button" value="Register As User" onclick="user()"/>
    <input type="button" value="Register As Driver" onclick="driver()"/>
</div>
</div>


    <div class="boxx" id="userrr">
    <div class="signinall">
    <div class="iconn">
        <i class="fa-solid fa-user-lock fa-2xl" style="color: #b418ec;"></i><br/>
        <h3 style="padding-top: 10px;">User</h>
    </div>
    <div class="forms">
        <form action="Registration" method="post">
            <div class="flname">
            <input type="text" placeholder=" First Name" name="f_name" required
            pattern="[A-Za-z]{1,32}" 
             oninvalid="this.setCustomValidity ('A Name Should Not include Number OR Special Character'<br>'please Reload And Re-fill The form')"
             error title="First name"
            />
           
            <input type="text" placeholder=" Last Name" name="l_name" required
             pattern="[A-Za-z]{1,32}" 
             oninvalid="this.setCustomValidity ('A last Name Should Not include Number OR Special Character'<br>'please Reload And Re-fill The form')"
             error title="Last name"
            />	<br/><br/>
            
            </div>
            <div class="textboxes">
             <input type="tel" placeholder=" Contact Number" name="phone_no" required
             pattern="[6-9]{1}[0-9]{9}"
              oninvalid="this.setCustomValidity ('Please Enter Valid Contact number'<br>'please Reload And Re-fill The form')"
              error title="Contact No"
              /><br/><br/>
            
            
            <input type="email" placeholder=" Email : example123@gmail.com" name="email" required
              pattern="+@gmail\.com"
               oninvalid="this.setCustomValidity ('Please Enter Valid Email id'<br>'please Reload And Re-fill The form')"
              error title="Email" 
               /><br/><br/>
           
           
            <input type="password" placeholder=" Password" name="pass" required
            pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$"
           oninvalid="this.setCustomValidity ('Password Must contain First letter capital, One special character and Numbers '<br>'please Reload And Re-fill The form')"
            error title="Password"
           /><br/><br/> 
             
            <input type="text" placeholder=" Address " name="address" required error title="Address"/><br/><br/>
           
        </div>
        <div class="checkbutton">
           <input type="checkbox" required> i hereby confirmed the <a href="t-and-c">terms & condiition</a> <br/><br/>
           <input class="btn btn-primary" type="submit" value="Register" style="width: 400px;">
        </div>
        </form>
        <div class="haveacc">
            <a href="login.jsp">Already have an Account?Sign in</a>
        </div>
    </div>
    </div>
    </div>
    <div class="boxx" id="driverr" style="display:none;">
    <div class="signinall2" style=" border: 2px solid black;
    border-radius: 15px;
    width: 500px;
    height: 700px;">
    <div class="iconn">
        <i class="fa-solid fa-user-lock fa-2xl" style="color: #b418ec;"></i><br/>
        <h3 style="padding-top: 10px;">Driver</h>
    </div>
    <div class="forms">
        <form action="DriverRegister" method="post">
            <div class="flname">
            <input type="text" placeholder=" First Name" name="f_name" required
             pattern="[A-Za-z]{1,32}" 
             oninvalid="this.setCustomValidity ('A Name Should Not include Number OR Special Character'<br>'please Reload And Re-fill The form')"
             error title="First name"
            />
            <input type="text" placeholder=" Last Name" name="l_name" required
             pattern="[A-Za-z]{1,32}" 
             oninvalid="this.setCustomValidity ('A  Last Name Should Not include Number OR Special Character' <br>'please Reload And Re-fill The form')"
             error title="Last Name"
            /> <br/><br/>
            </div>
           
           
            <div class="textboxes">
            
            <input type="tel" placeholder=" Contact Number" name="phone_no" required
             pattern="[6-9]{1}[0-9]{9}"
              oninvalid="this.setCustomValidity ('Please Enter Valid Contact number' <br>'please Reload And Re-fill The form')"
               error title="Contact No"
              />	<br/><br/>
            
            <select  name="cabtypes" style="width: 400px; height: 40px; margin-bottom: 20px; border-radius: 10px; border: 2px solid;" required >
            <option value="" hidden disabled selected>Select vehical Type</option>
            <option value="mini">Mini</option>
            <option value="sedan">Sedan</option>
            <option value="suv">Suv</option>
            <option value="scooty">scooter</option>
            <option value="bike">Bike</option>
            <option value="Rikshaw">Auto-Rikshaw</option>
        </select>
       
        <div class="flname" style="padding-top: 0px;">
            <input type="text" placeholder="Cab No:  MH-02 AM-5105" name="cabno"  style="width: 200px;" required
            pattern="[A-Z]{2}-[0-9]{2} [A-z]{2}-[0-9]{4}"
            oninvalid="this.setCustomValidity ('Please Enter cab No in the given format' <br>'please Reload And Re-fill The form')"
             error title="Vehical Number"
            />
            
            
            <input type="text" placeholder=" Lisence No" name="lino"  style="width: 200px;" required
            pattern="[A-Z]{2}[0-9]{13}"
            oninvalid="this.setCustomValidity (' Must contain First Two letter(State Name) capital letter, and 13 Numbers Numbers example: MH1234567891034 '<br>'please Reload And Re-fill The form')"
             error title="Lisence Number"
            />	<br/><br/>
            </div>
            
            <input type="email" placeholder=" Email : example123@gmail.com" name="email" required 
             pattern=".+@gmail\.com" 
             oninvalid="this.setCustomValidity ('Please Enter Valid Email id'<br>'please Reload And Re-fill The form')"
              error title="Email"
             /><br/><br/>
           
           
            <input type="password" placeholder=" Password" name="pass" required
            pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$"
           oninvalid="this.setCustomValidity ('Password Must contain First letter capital, One special character and Numbers '<br>'please Reload And Re-fill The form')"
            error title="Password"
           />
       			<br/><br/>  
           
            <input type="text" placeholder=" Address " name="address" required
            error title="Address"
            /><br/><br/>
           
        </div>
        <div class="checkbutton">
           <input type="checkbox" required> i hereby confirmed the <a href="t-and-c">terms & condiition</a> <br/><br/>
           <input class="btn btn-primary" type="submit" value="Register"style="width: 400px;">
        </div>
        </form>
    </div>
    </div>
    </div>
    
    <script>
    function user(){ 
        
        var ab=document.getElementById('driverr')
     
      if (ab.style.display !== "none") {
         ab.style.display = "none"; 
          }



      var ab=document.getElementById('userrr')
      if (ab.style.display === "none") {
         ab.style.display = "block";
          } 


    }
    function driver(){  
        var ab=document.getElementById('userrr')
        if(ab.style.display !== "none") {
         ab.style.display = "none";
          } 
        

      var ab=document.getElementById('driverr')
     
      if (ab.style.display === "none") {
         ab.style.display = "block"; 
          } 
    }
    
    
    
    </script>
    
    
    </body>
    </html>
    