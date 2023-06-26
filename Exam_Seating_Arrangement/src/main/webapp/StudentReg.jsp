<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Register Students</title>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: black;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links 
a {
  color: dodgerblue;
}*/

/* Set a grey background color and center the text of the "sign in" section 
.signin {
  background-color: #f1f1f1;
  text-align: center;
}*/
</style>

</head>


<form action="Register" method="post">
    <div class="container">
      <h1>Register Students</h1>
      <p>Please fill the student details in this form.</p>
      <hr>
  
      <label for="email"><b>Student Name</b></label>
      <input type="text" placeholder="Student name" name="uname" id="email" required>
  
      <label for="psw"><b>Date of Birth</b></label>
      <input type="text" placeholder="DD-MM-YYYY" name="dob" id="psw" required>
  
      <label for="psw-repeat"><b>USN</b></label>
      <input type="text" placeholder="1DSXXCSXXX" name="usn" id="psw-repeat" required>
      
      <label for="email"><b>Semester</b></label>
      <input type="text" placeholder="e.g.: 3 " name="sem" id="email" required>

      <label for="email"><b>Branch</b></label>
      <input type="text" placeholder="e.g.: CSE " name="branch" id="email" required>

  
      <hr>
      
  
      <button type="submit" class="registerbtn">Register</button>
      
      <button type="button" class="registerbtn"><a href="AdSeatAllot.html"> Allotment </a> </button>
    </div>
    
      
    
    <!--<div class="container signin">
      <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>-->
  </form>
  
  </body>
  </html>