package in.lanif;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
      
	
	private String url = "jdbc:mysql://localhost:3306/demodatabase";
	private String dbname = "root";
	private String dbpass = "@2knight";
	private String dbDriver = "com.mysql.cj.jdbc.Driver";
	
	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection()
	{
		Connection con = null;
		try {
			con = DriverManager.getConnection(url,dbname,dbpass);
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public String insert(StuMember mem)
	{
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered successfully";
		
		String sql = "insert into stumember values(?,?,?,?,?)";
		PreparedStatement ps;
		try {
		ps = con.prepareStatement(sql);
		ps.setString(1, mem.getUname());
		ps.setString(2, mem.getDob());
		ps.setString(3, mem.getUsn());
		ps.setString(4, mem.getSem());
		ps.setString(5, mem.getBranch());
		ps.executeUpdate();
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result = "Data not entered";
		}
				
		
		return result;
	}
}
