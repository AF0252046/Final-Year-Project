<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/book.css">
    <script src="https://kit.fontawesome.com/d13ee8b9fd.js" crossorigin="anonymous"></script>
<title>VAHAN Scooter</title>
</head>
<body>

    	
        <div class="Booking">
            <div class="bookingcalc">
                <div class="header">
                    <div class="sidebar" style="padding-left: 30px;">
                      <button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><i class="fa-solid fa-bars"></i></button>
                      <div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel" style="width: 250px;">
                        <div class="offcanvas-header">
                          <h5 class="offcanvas-title" id="offcanvasScrollingLabel"> VAHAN</h5>
                          <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div><hr>
                        <div class="offcanvas-body" style="padding-left: 0px;">
                          <div class="side-content">
                         <ul>
                          <li><a href="Home.html"> <i class="fa-solid fa-house fa-lg"></i> &nbsp; &nbsp; &nbsp; Home</a></li><hr>
                          <li><a href="About.jsp"> <i class="fa-solid fa-circle-exclamation fa-lg"></i> &nbsp; &nbsp; &nbsp; About</a></li><hr>
                          <li><a href="Services.jsp"> <i class="fa-solid fa-id-card-clip fa-lg"></i>  &nbsp; &nbsp; &nbsp;services</a></li><hr>
                          <li><a href="Blog.jsp"> <i class="fa-solid fa-blog fa-lg"></i> &nbsp; &nbsp; &nbsp; Blog</a></li><hr>
                          <li><a href="Contact.jsp"> <i class="fa-solid fa-address-book fa-lg"></i> &nbsp; &nbsp; &nbsp; Contact</a></li><hr>
                         </ul>
                      </div>
                        </div>
                      </div>
                      <img src="images/logo3.png" style="padding-left: 30px;"/>
            
                     
            
                    </div>
                    </div>

                    <form>
                        <div class="booking-side">
                            <form action="" method="post">
                            
                                <div class="input-group">
                                    <div class="input-feild">
                                        <select name="pu" id="from" required>
                                           <option value="" disabled selected hidden>To: "Select Destination" </option>
                                            <option value="borivali">Borivali</option>
                                            <option value="kandivali">Kandivali</option>
                                            <option value="malad">Malad</option>
                                            <option value="goregoan">Goregoan</option>
                                            <option value="ram-Mandir">Ram Mandir</option>
                                            <option value="jogeshwari">jogrshwari</option>
                                            <option value="andheri">Andheri</option>
                                            <option value="ville-parle">ville parle</option>
                                            <option value="santa-cruz">Santa cruz</option>
                                            <option value="khar">khar</option>
                                            <option value="bandra">Bandra</option>
                                            <option value="matunga">Matunga</option>
                                            <option value="dadar">Dadar</option>
                                            <option value="elphinstone-road">Elphimdtone road</option>
                                            <option value="lower-Parel">Lower Parel </option>
                                            <option value="mahalaxmi">Mahalaxmi</option>
                                            <option value="mumbai-Central">Mumbai Central</option>
                                            <option value="grant-road">Grant road</option>
                                            <option value="churni-road">Churni road</option>
                                            <option value="marine-Lines">Marine Lines</option>
                                            <option value="churchGate">ChurchGate</option>
                                        </select><br>
                                        <select name="dn" id="Destination" required>
                                            <option value="" disabled selected hidden>To: "Select Destination" </option>
                                            <option value="borivali">Borivali</option>
                                            <option value="kandivali">Kandivali</option>
                                            <option value="malad">Malad</option>
                                            <option value="goregoan">Goregoan</option>
                                            <option value="ram-Mandir">Ram Mandir</option>
                                            <option value="jogeshwari">jogrshwari</option>
                                            <option value="andheri">Andheri</option>
                                            <option value="ville-parle">ville parle</option>
                                            <option value="santa-cruz">Santa cruz</option>
                                            <option value="khar">khar</option>
                                            <option value="bandra">Bandra</option>
                                            <option value="matunga">Matunga</option>
                                            <option value="dadar">Dadar</option>
                                            <option value="elphinstone-road">Elphimdtone road</option>
                                            <option value="lower-Parel">Lower Parel </option>
                                            <option value="mahalaxmi">Mahalaxmi</option>
                                            <option value="mumbai-Central">Mumbai Central</option>
                                            <option value="grant-road">Grant road</option>
                                            <option value="churni-road">Churni road</option>
                                            <option value="marine-Lines">Marine Lines</option>
                                            <option value="churchGate">ChurchGate</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="btnn">
                            <button type="submit" class="btn btn-outline-success" onclick="show()">Enter</button>
                        </div>
                                
                        
                        <%
                        int rsperkm=12;
                        double km=0;
                        

            			
            			
                        try {
                			
                			 String pl=request.getParameter("pu");
                			String dl=request.getParameter("dn");
                			
                			
                			if((pl.equals("borivali") && dl.equals("kandivali"))|| (pl.equals("kandivali") && dl.equals("borivali"))) {
                				km=3.4;
                			}
                			else if((pl.equals("kandivali") && dl.equals("malad"))|| (pl.equals("malad") && dl.equals("kandivali"))){
                				km=2.3;
                			}
                			else if((pl.equals("malad") && dl.equals("goregoan"))|| (pl.equals("goregoan") && dl.equals("malad"))){
                				km=3.6;
                			}
                			else if((pl.equals("goregoan") && dl.equals("ram-Mandir"))|| (pl.equals("ram-Mandir") && dl.equals("goregoan"))){
                				km=1.1;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("jogeshwari"))|| (pl.equals("jogeshwari") && dl.equals("ram-Mandir"))){
                				km=1.4;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("andheri"))|| (pl.equals("andheri") && dl.equals("jogeshwari"))){
                				km=6.7;
                			}
                			else if((pl.equals("andheri") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("andheri"))){
                				km=4.3;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("ville-parle"))){
                				km=2.9;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("santa-cruz"))){
                				km=2.0;
                			}
                			else if((pl.equals("khar") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("khar"))){
                				km=2.0;
                			}
                			else if((pl.equals("bandra") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("bandra"))){
                				km=7.1;
                			}
                			else if((pl.equals("matunga") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("matunga"))){
                				km=3.3;
                			}
                			else if((pl.equals("dadar") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("dadar"))){
                				km=3.1;
                			}
                			else if((pl.equals("elphinstone-road") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("elphinstone-road"))){
                				km=1.2;
                			}
                			else if((pl.equals("lower-Parel") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("lower-Parel"))){
                				km=2.1;
                			}
                			else if((pl.equals("mahalaxmi") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("mahalaxmi"))){
                				km=2.9;
                			}
                			else if((pl.equals("mumbai-Central") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("mumbai-Central"))){
                				km=1.5;
                			}
                			else if((pl.equals("grant-road") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("grant-road"))){
                				km=2.4;
                			}
                			else if((pl.equals("churni-road") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("churni-road"))){
                				km=1.8;
                			}
                			else if((pl.equals("marine-Lines") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("marine-Lines"))){
                				km=1.9;
                			}
                			
                			//Borivali
                			else if((pl.equals("borivali") && dl.equals("malad"))|| (pl.equals("malad") && dl.equals("borivali"))){
                				km=2.3+3.4;
                			}
                			else if((pl.equals("borivali") && dl.equals("goregoan"))|| (pl.equals("goregoan") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6;
                			}
                			else if((pl.equals("borivali") && dl.equals("ram-Mandir"))|| (pl.equals("ram-Mandir") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1;
                			}
                			else if((pl.equals("borivali") && dl.equals("jogeshwari"))|| (pl.equals("jogeshwari") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4;
                			}
                			else if((pl.equals("borivali") && dl.equals("andheri"))|| (pl.equals("andheri") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7;
                			}
                			else if((pl.equals("borivali") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3;
                			}
                			else if((pl.equals("borivali") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9;
                			}
                			else if((pl.equals("borivali") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0;
                			}
                			else if((pl.equals("borivali") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("borivali") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("borivali") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("borivali") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("borivali") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("borivali") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("borivali") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("borivali") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("borivali") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("borivali") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("borivali") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("borivali"))){
                				km=2.3+3.4+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			// Kandivali
                			else if((pl.equals("kandivali") && dl.equals("goregoan"))|| (pl.equals("goregoan") && dl.equals("kandivali"))){
                				km=2.3+3.6;
                			}
                			else if((pl.equals("kandivali") && dl.equals("ram-Mandir"))|| (pl.equals("ram-Mandir") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1;
                			}
                			else if((pl.equals("kandivali") && dl.equals("jogeshwari"))|| (pl.equals("jogeshwari") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4;
                			}
                			else if((pl.equals("kandivali") && dl.equals("andheri"))|| (pl.equals("andheri") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7;
                			}
                			else if((pl.equals("kandivali") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3;
                			}
                			else if((pl.equals("kandivali") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9;
                			}
                			else if((pl.equals("kandivali") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0;
                			}
                			else if((pl.equals("kandivali") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("kandivali") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("kandivali") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("kandivali") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("kandivali") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("kandivali") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("kandivali") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("kandivali") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("kandivali") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("kandivali") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("kandivali") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("kandivali"))){
                				km=2.3+3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			
                			//malad
                			
                			else if((pl.equals("malad") && dl.equals("ram-Mandir"))|| (pl.equals("ram-Mandir") && dl.equals("malad"))){
                				km=3.6+1.1;
                			}
                			else if((pl.equals("malad") && dl.equals("jogeshwari"))|| (pl.equals("jogeshwari") && dl.equals("malad"))){
                				km=3.6+1.1+1.4;
                			}
                			else if((pl.equals("malad") && dl.equals("andheri"))|| (pl.equals("andheri") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7;
                			}
                			else if((pl.equals("malad") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3;
                			}
                			else if((pl.equals("malad") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9;
                			}
                			else if((pl.equals("malad") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0;
                			}
                			else if((pl.equals("malad") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("malad") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("malad") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("malad") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("malad") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("malad") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("malad") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("malad") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("malad") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("malad") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("malad") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("malad"))){
                				km=3.6+1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//goregoan
                			
                			else if((pl.equals("goregoan") && dl.equals("jogeshwari"))|| (pl.equals("jogeshwari") && dl.equals("goregoan"))){
                				km=1.1+1.4;
                			}
                			else if((pl.equals("goregoan") && dl.equals("andheri"))|| (pl.equals("andheri") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7;
                			}
                			else if((pl.equals("goregoan") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3;
                			}
                			else if((pl.equals("goregoan") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9;
                			}
                			else if((pl.equals("goregoan") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0;
                			}
                			else if((pl.equals("goregoan") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("goregoan") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("goregoan") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("goregoan") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("goregoan") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("goregoan") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("goregoan") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("goregoan") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("goregoan") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("goregoan") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("goregoan") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("goregoan"))){
                				km=1.1+1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			
                			
                			//Ram-Mandir
                			else if((pl.equals("ram-Mandir") && dl.equals("andheri"))|| (pl.equals("andheri") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("ram-Mandir") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("ram-Mandir"))){
                				km=1.4+6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			// Jogeshwari
                			
                			else if((pl.equals("jogeshwari") && dl.equals("ville-parle"))|| (pl.equals("ville-parle") && dl.equals("jogeshwari"))){
                				km=6.7+4.3;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("jogeshwari") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("jogeshwari"))){
                				km=6.7+4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Andheri
                			
                			else if((pl.equals("andheri") && dl.equals("santa-cruz"))|| (pl.equals("santa-cruz") && dl.equals("andheri"))){
                				km=4.3+2.9;
                			}
                			else if((pl.equals("andheri") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0;
                			}
                			else if((pl.equals("andheri") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0;
                			}
                			else if((pl.equals("andheri") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("andheri") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("andheri") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("andheri") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("andheri") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("andheri") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("andheri") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("andheri") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("andheri") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("andheri") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("andheri"))){
                				km=4.3+2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Vile-parle
                			
            
                			else if((pl.equals("ville-parle") && dl.equals("khar"))|| (pl.equals("khar") && dl.equals("ville-parle"))){
                				km=2.9+2.0;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("ville-parle") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("ville-parle"))){
                				km=2.9+2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Santa-cruz
                			
                			else if((pl.equals("santa-cruz") && dl.equals("bandra"))|| (pl.equals("bandra") && dl.equals("santa-cruz"))){
                				km=2.0+2.0;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("santa-cruz") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("santa-cruz"))){
                				km=2.0+2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//khar
                			
                			else if((pl.equals("khar") && dl.equals("matunga"))|| (pl.equals("matunga") && dl.equals("khar"))){
                				km=2.0+7.1;
                			}
                			else if((pl.equals("khar") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("khar"))){
                				km=2.0+7.1+3.3;
                			}
                			else if((pl.equals("khar") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1;
                			}
                			else if((pl.equals("khar") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("khar") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("khar") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("khar") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("khar") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("khar") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("khar") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("khar"))){
                				km=2.0+7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//bandra
                			
                			else if((pl.equals("bandra") && dl.equals("dadar"))|| (pl.equals("dadar") && dl.equals("bandra"))){
                				km=7.1+3.3;
                			}
                			else if((pl.equals("bandra") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1;
                			}
                			else if((pl.equals("bandra") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0;
                			}
                			else if((pl.equals("bandra") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("bandra") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("bandra") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("bandra") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("bandra") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("bandra") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("bandra"))){
                				km=7.1+3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//matunga
                			
                			else if((pl.equals("matunga") && dl.equals("elphinstone-road"))|| (pl.equals("elphinstone-road") && dl.equals("matunga"))){
                				km=3.3+3.1;
                			}
                			else if((pl.equals("matunga") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0;
                			}
                			else if((pl.equals("matunga") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0+2.1;
                			}
                			else if((pl.equals("matunga") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("matunga") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("matunga") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("matunga") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("matunga") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("matunga"))){
                				km=3.3+3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Dadar
                			
                			else if((pl.equals("dadar") && dl.equals("lower-Parel"))|| (pl.equals("lower-Parel") && dl.equals("dadar"))){
                				km=3.1+1.0;
                			}
                			else if((pl.equals("dadar") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("dadar"))){
                				km=3.1+1.0+2.1;
                			}
                			else if((pl.equals("dadar") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("dadar"))){
                				km=3.1+1.0+2.1+2.9;
                			}
                			else if((pl.equals("dadar") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("dadar"))){
                				km=3.1+1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("dadar") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("dadar"))){
                				km=3.1+1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("dadar") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("dadar"))){
                				km=3.1+1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("dadar") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("dadar"))){
                				km=3.1+1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Elphinston-Road
                			
                			else if((pl.equals("elphinstone-road") && dl.equals("mahalaxmi"))|| (pl.equals("mahalaxmi") && dl.equals("elphinstone-road"))){
                				km=1.0+2.1;
                			}
                			else if((pl.equals("elphinstone-road") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("elphinstone-road"))){
                				km=1.0+2.1+2.9;
                			}
                			else if((pl.equals("elphinstone-road") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("elphinstone-road"))){
                				km=1.0+2.1+2.9+1.5;
                			}
                			else if((pl.equals("elphinstone-road") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("elphinstone-road"))){
                				km=1.0+2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("elphinstone-road") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("elphinstone-road"))){
                				km=1.0+2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("elphinstone-road") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("elphinstone-road"))){
                				km=1.0+2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Lower-Parel
                			
                			else if((pl.equals("lower-Parel") && dl.equals("mumbai-Central"))|| (pl.equals("mumbai-Central") && dl.equals("lower-Parel"))){
                				km=2.1+2.9;
                			}
                			else if((pl.equals("lower-Parel") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("lower-Parel"))){
                				km=2.1+2.9+1.5;
                			}
                			else if((pl.equals("lower-Parel") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("lower-Parel"))){
                				km=2.1+2.9+1.5+2.4;
                			}
                			else if((pl.equals("lower-Parel") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("lower-Parel"))){
                				km=2.1+2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("lower-Parel") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("lower-Parel"))){
                				km=2.1+2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Mahalaxmi
                			
                			else if((pl.equals("mahalaxmi") && dl.equals("grant-road"))|| (pl.equals("grant-road") && dl.equals("mahalaxmi"))){
                				km=2.9+1.5;
                			}
                			else if((pl.equals("mahalaxmi") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("mahalaxmi"))){
                				km=2.9+1.5+2.4;
                			}
                			else if((pl.equals("mahalaxmi") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("mahalaxmi"))){
                				km=2.9+1.5+2.4+1.8;
                			}
                			else if((pl.equals("mahalaxmi") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("mahalaxmi"))){
                				km=2.9+1.5+2.4+1.8+1.9;
                			}
                			
                			//Mumbai-Central
                			
                			else if((pl.equals("mumbai-Central") && dl.equals("churni-road"))|| (pl.equals("churni-road") && dl.equals("mumbai-Central"))){
                				km=1.5+2.4;
                			}
                			else if((pl.equals("mumbai-Central") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("mumbai-Central"))){
                				km=1.5+2.4+1.8;
                			}
                			else if((pl.equals("mumbai-Central") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("mumbai-Central"))){
                				km=1.5+2.4+1.8+1.9;
                			}
                			
                			//Grant-Road
                			
                			else if((pl.equals("grant-road") && dl.equals("marine-Lines"))|| (pl.equals("marine-Lines") && dl.equals("grant-road"))){
                				km=2.4+1.8;	
                			}
                			else if((pl.equals("grant-road") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("grant-road"))){
                				km=2.4+1.8+1.9;
                			}
                			
                			
                			//Charni-Road
                			
                			else if((pl.equals("churni-road") && dl.equals("churchGate"))|| (pl.equals("churchGate") && dl.equals("churni-road"))){
                				km=2.4+1.8+1.9;
                			}
                			
                			else if(pl.equals(dl) && dl.equals(pl)){
                				km=0;
                				rsperkm=0;
                				
                			}
                			
                			
                			else{
                				
                			}
                			
                			float kmm=(float)km;
                			%>
                			 <div class="allcalc">

                             <div class="lables">
                               <label>Pick Up: </label><br>
                               <label>Destination: </label><br>
                               <label>Distance : </label><br>
                               <label>Rs/Km : </label><br>
                               <label>Charges : </label><br>
                             </div>
                             
                           
                             <div class="allinputs">
                           <input type="text" value="<%out.print(pl); %>" readonly><br>
                           <input type="text" value="<%out.print(dl); %>"readonly><br> 
                           <input type="text"  value="<%out.print(kmm+"km");%>" readonly ><br>               
                           <input type="text" value="<%out.print(rsperkm+"rs");%>" readonly ><br>
                           <input type="text" value="10rs" readonly ><br>
                         </div>
                         </div>
                			
                         <%
                        }
                        catch(Exception e){
                        	e.printStackTrace();
                        }
                          double total=10+15+((km-1.5)*12);
                          float tot=(float)total;
                			
                        %>

                       

                        <div class="btnn">
                            <button type="button" class="btn btn-outline-success" onclick="total()">Total</button>
                        </div>
                        
                
                 		<div class="totall" id="totid" style="display:none">
                        <div class="total" style="padding-top: 15px;">
                          <div class="lables" style="padding-top: 15px;">                
                               <label>Total : </label>
                              </div> 
                              <div class="allinputs">
                                 <input type="text" value="<%out.print(tot+"rs");%>" readonly style="width: 195px; font-size: 20px;"><br>
                             </div>
                             </div>
                             </div>
                    </form>
                    
                    
            </div>
        </div>
    <div class="otherside">
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel"  >
            <div class="carousel-inner" >
              <div class="carousel-item active" >
                <img src="images/bookingside8.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="images/bookingside9.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="images/bookingside3.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
          </div>
    </div>
</div>

<script>
function total(){ 
	 var ab=document.getElementById('totid')
	 
	  if (ab.style.display === "none") {
	     ab.style.display = "block"; 
	      }
}

</script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>


</body>
</html>