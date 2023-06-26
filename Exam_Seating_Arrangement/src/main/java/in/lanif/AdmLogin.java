package in.lanif;

//import java.io.*;
//import javax.servlet.*;
//import javax.servlet.http.*;
 

import java.io.IOException;
import java.io.PrintWriter;

//import java.net.http.HttpResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ALogin")
public class AdmLogin extends jakarta.servlet.http.HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		String pass= request.getParameter("pass");
		
		LoginDaoAdmin dao = new LoginDaoAdmin();
		
		if(dao.check(uname,pass))
		{
		    HttpSession session = request.getSession();
		    session.setAttribute("Name",uname);
			response.sendRedirect("StudentReg.jsp");
		}
		else
		{
			//PrintWriter out = response.getWriter();
			//out.println(" Invalid Admin user");
			response.sendRedirect("AdloginFail.html");
		}
		
	}

	
}
