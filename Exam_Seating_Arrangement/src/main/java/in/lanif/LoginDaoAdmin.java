package in.lanif;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDaoAdmin {
	
	String url="jdbc:mysql://localhost:3306/examhall";
	String username = "root";
	String password = "@2knight";
	String query="select * from teacher where teacher_id=? and password=?";
	
	
	public boolean check(String uname,String pass)
	{
		 try{  
			    Class.forName("com.mysql.cj.jdbc.Driver");  
			    Connection con=DriverManager.getConnection(url,username,password);  
			          
			    PreparedStatement ps=con.prepareStatement(query);  
			    ps.setString(1, uname);  
			    ps.setString(2, pass);  
			          
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
