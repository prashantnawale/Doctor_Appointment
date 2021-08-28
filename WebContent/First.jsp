<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
       <link rel="stylesheet" media="screen,projection" type="text/css" href="./main.css" />

<title>welcome</title>
<style type="text/css">
		body  {
  background-image: url("images/Prashant.jpg");
  background-repeat: no-repeat;
  
   background-size: 1400px 670px;
   
}
.btn1{
		background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
</head>
<body>
     <form action="<%=request.getContextPath() %>/register" method="post">
     
     <center>
     <h1 style="color: white;"> City Hospital </h1>
     </center>
     <div style="color: white;">
     Help Line No-1234567890
     </div>
     <hr>				
     <br>
   
     
     <h2 style="color: white;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
							Patient Name:	
									     &nbsp;&nbsp;&nbsp;&nbsp;
							<input type='text' placeholder='Patient_Name' name='Name' required > 
			
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
								
							Patient Age:	
									     &nbsp;&nbsp;&nbsp;&nbsp;
							<input type='text' placeholder='Patient_Age' name='Patient_Age' required > 
			
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br>
							
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   				
							
							Patient DOB:
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type='Date' placeholder='Patient_DOB' name='Patient_DOB' required > 
			
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<%-- 			
								Blood Group:	
								<ul>
										<li>
										  <select name="Blood Group" id="Blood Group">
									    <option value=" ">Blood Group</option>
									    <option value="A+">A+</option>
									    <option value="A-">A-</option>
									      <option value="B+">B+</option>
									      <option value="B-">B-</option>
									      <option value="AB+">AB-</option>
									    <option value="AB-">AB-</option>
									    <option value="O+">O+</option>
									    <option value="O+">O-</option>
							--%>	
								
							Blood Group:
										&nbsp;&nbsp;
										<input type='text' placeholder='Blood_Group' name='Blood_Group' required >
							
					
					<br>			
										
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								
							Address:
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type='text' placeholder='Address' name='Address' required >
										
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

								
							Mobile_Number:
										
										<input type='text' placeholder='Mobile_Number' name='Mobile_Number' required >
						
							<br>
							
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							Email:
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;
										<input type='text' placeholder='Email' name='Email' required >
										
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

								
							Date:
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type='date' placeholder='Date' name='Date' required >
										
										
							<br>
							
						
						</h2>				
						
						<center>
						
						<h2 style="color: white;">	
							Report Upload Here:
										<input type="file" name="upload" accept="application/pdf" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</h2>
										
									
						</center>
							<br>
							<center>
							<br>
							<div class="btn1">
								<input type="submit" value='Submit'>
								</div>
							</center>
			</center>			
</body>
</html>