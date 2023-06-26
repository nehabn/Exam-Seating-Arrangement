<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Login</title>
<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" rel="stylesheet">
 -->
</head>

<div class="header">
<h1><b>STUDENT LOGIN</b></h1>

</div>


 <body>
 
 <div class="log">
 <form action="Login">
 
   <table>
   
   <tr>
   <td>USN</td>
   <td><input type="text" name="usn" placeholder="USN"></td>
   </tr>
   
   <tr>
   <td>Password</td>
   <td><input type="password" name="pass" placeholder="Password"></td>
   </tr>
   
   <tr>
   <td colspan="2" style="text-align: center">
     <input type="submit" value="Login">
   </td>
   </tr>
   
   </table>

</form>
</div>

<div class="abt">
<a href="about.jsp">About Us</a>
</div>


 </body>


</html>