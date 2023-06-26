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
   <h1>Seat Allotment</h1>
   </center>
   <style>
 table{
  width:100%;
  height:80%;
  
  
 }
 td:nth-child(even){background-color: #FFB833}
 td:nth-child(odd){background-color:#3395FF}
	
 th {
   background-color: grey;
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
<th>Row-1</th>
<th>Row-2</th>
<th>Row-3</th>
<th>Row-4</th> 

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
               for(int k=1;k<=4;k++)
                {
                if(k%2==0)
                {
                  // out.print("<td> 3rd Semester </td>"); //new line
                  out.print("<td>3rd Sem- 1DS20CS"+a3 + "\t </td>");
                  a3++;
                }
                else
                {
                  // out.print("<td> 5rd Semester </td>"); //new line
                  out.print("<td>5th Sem- 1DS19CS"+a5 + "\t </td>");
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
               for(int k=1;k<=4;k++)
                {
                 if((i+k)%2==0)
                 {
                   // out.print("<td> 3rd Semester </td>"); //new line
                   out.print("<td>3rd Sem- 1DS20CS"+a3 + "\t</td>");
                   a3++;
                 }
                 else
                 {
                   // out.print("<td> 5rd Semester </td>"); //new line
                   out.print("<td>5rd Sem- 1DS19CS"+a5 + "\t </td>");
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
 </center>
</body>
</html>