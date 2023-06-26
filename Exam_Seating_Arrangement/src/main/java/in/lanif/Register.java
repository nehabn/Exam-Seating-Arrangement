package in.lanif;

import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

//import java.io.PrintWriter;

//import java.net.http.HttpResponse;
//import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import logindemo.dao.Daologin;

@WebServlet("/Register")
public class Register extends jakarta.servlet.http.HttpServlet {
	
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String dob = request.getParameter("dob");
		String usn = request.getParameter("usn");
		String sem = request.getParameter("sem");
		String branch = request.getParameter("branch");
		
		StuMember mem = new StuMember(uname,dob,usn,sem,branch);
		
		RegisterDao rdao = new RegisterDao();
		String result = rdao.insert(mem);
		response.sendRedirect("AfterReg.html");
		(response).getWriter().print(result);
	}

}
