package in.lanif;

//import java.io.*;
import java.io.IOException;

//import java.io.IOException;
//import java.net.http.HttpResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	HttpSession session=request.getSession(); // to remove the data entered
	session.removeAttribute("USN");
	session.invalidate();
	response.sendRedirect("login.jsp");
	}

	

}
