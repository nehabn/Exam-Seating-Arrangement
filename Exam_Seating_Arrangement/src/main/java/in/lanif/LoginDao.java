package in.lanif;

import java.sql.*;  
      
    public class LoginDao 
    {
    	
    	String url="jdbc:mysql://localhost:3306/demodatabase";
    	String username = "root";
    	String password = "@2knight";
    	String query="select usn from stumember where usn=?";
    	
    public boolean check(String usn)
    {  
     
    try{  
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection con=DriverManager.getConnection(url,username,password);  
          
    PreparedStatement ps=con.prepareStatement(query);  
    ps.setString(1, usn);  
   // ps.setString(2,pass);  
          
    ResultSet rs=ps.executeQuery();  
    
    if(rs.next())
    {
    	return true;
    }
              
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }  
    return false;  
    }  
    }  