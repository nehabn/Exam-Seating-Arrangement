package in.lanif;

//import java.io.*;
//import javax.servlet.*;
//import javax.servlet.http.*;
 

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
//import java.net.http.HttpResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SLogin")
public class StuLogin extends jakarta.servlet.http.HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		String usn= request.getParameter("usn");
		
		//String pass= request.getParameter("pass");
		
		LoginDao dao=new LoginDao();
		
		if(dao.check(usn))
		{
		    HttpSession session = request.getSession();
		    session.setAttribute("USN",usn);
			response.sendRedirect("http://localhost:8082/FinalLoginpg/AllotmentF.jsp?room=120&usn3=101&usn=110&usn5=401&usn=410&choice=1"); // this page is showing error
			 
			
		}
		else
		{
			//PrintWriter out = response.getWriter();
			//out.println(" USN does not exist");
			response.sendRedirect("StuLoginFail.html");
			
			  
//	        RequestDispatcher rd=request.getRequestDispatcher("studentlogin.jsp");  
//	        rd.include(request,response);  
	    }  
		
		}
		
	}

	

