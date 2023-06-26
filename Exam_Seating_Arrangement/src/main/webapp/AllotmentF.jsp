<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>Seat allotment</title>

<body>

<div class="heading">
<head>
   <center>
   <h1 style="font-size:50px;">Seat Allotment</h1>
  <!--  <h3>	Room 101</h3>--> 
  
 
   
   <%
   int rno = Integer.parseInt(request.getParameter("room"));

   out.println("<h2>Room number: " + rno + "</h2>");
   %>
   
   
   <h3>No.of rows = 5</br>
    No. of columns = 4</br>
    Total no. of seats = 20</h3>
   
   
    
 <div class="child"> <!-- new code -->
       <img src="https://drive.google.com/uc?export=view&id=1zlq3vm6kSbhxEFulSoUxca9GL2F9eayL" alt="" id="door" height="150px" width="80px"> 
        <img src="https://drive.google.com/uc?export=view&id=1T6Gp6Un9U7JYxCK2iBmhxV0jUsq9EDR8" alt="" id="pic3" height="180px" width="360px"> 
        </div>
   
   
    <h1><b>	&#8595;</b></h1>
     </center>
   
   
   <style>
 table{
  width:40%;

  
 }
/* td:nth-child(even){background-color: #FFB833}
 td:nth-child(odd){background-color:#3395FF}
*/	
td.empty{
background-color: white;}  
/*td:nth-child(odd){background-color:#FFB833}*/
td:not(:nth-child(5)){background-color: #FFB833 }
td:nth-child(even){background-color:#3395FF}   /*new code for the empty row*/
td:nth-child(4){background-color: white}			
		
 th {
   background-color:grey;
   color: white;
 }
 td{
   text-align:center;
 }
 
 </style>
   </head>
</div>
<center>
<table>
<th>Seat no.</th>
<th>Column-1</th>
<th>Column-2</th>
<th colspan="2" style="background-color:white">     </th><!-- new -->

<th>Column-3</th>
<th>Column-4</th> 

<%

      int a3 = Integer.parseInt(request.getParameter("usn3"));
      int a5 = Integer.parseInt(request.getParameter("usn5"));
      int c = Integer.parseInt(request.getParameter("choice"));
      
      
      
      
      try{
      switch(c)
      {
   
       case 1:
              {
               int count=1;
               out.println("<tr>");
               for(int i=1;i<=5;i++)
      
               {
               out.println("<th>"+count+"</th>"); // i changed td to th
               for(int k=1;k<=6;k++)
                {
            	   if(k==3 || k==4)
            	   {
            		   out.print("<td class='empty'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
            		   
            	   }
            	   else if(k%2==0)
                {
                  // out.print("<td> 3rd Semester </td>"); //new line
                  out.print("<td>3rd Sem- 1DS20CS"+a3 + "\t </td>");
                  a3++;
                }
                else
                {
                  // out.print("<td> 5rd Semester </td>"); //new line
                  out.print("<td>5th Sem- 1DS19EE"+a5 + "\t </td>");
                  a5++;
                }
                out.println("\n");     
                }
                count++;
                out.println("</tr>");
                out.println("\n");
                }
               }
             break;
              
             
   case 2:
            {
              int ct=1;
              out.println("<tr>");

             for(int i=1;i<=5;i++)
              {
               out.println("<th>"+ct+"</th>");  // i changed td to th
               for(int k=1;k<=6;k++)
                {
            	   if(k==3 || k==4)
            	   {
            		   out.print("<td class='empty'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>");
            		   
            	   }
            	   else if((i+k)%2==0)
                 {
                   // out.print("<td> 3rd Semester </td>"); //new line
                   out.print("<td>3rd Sem- 1DS20CS"+a3 + "\t</td>");
                   a3++;
                 }
                 else
                 {
                   // out.print("<td> 5rd Semester </td>"); //new line
                   out.print("<td>5rd Sem- 1DS19EE"+a5 + "\t </td>");
                   a5++;
                 }
               }
               ct++;
               out.println("\n");
               out.println("</tr>");
               out.println("\n");
              }
              }
             break;
   
   
      }
      }
      
      catch(Exception e){
       
      }




%>



 </table>
 
 
 <div id="back">
 <button class="button"><a href="Home.html">Home</a></button>
<button class="button"><a href="AdSeatAllot.html">Back</a></button>
<button class="button"><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;">Print</a></button>
</div>

<style>


.button {
  background-color: #808080;
  border-radius: 10px;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
 
 </center>
</body>
</html>