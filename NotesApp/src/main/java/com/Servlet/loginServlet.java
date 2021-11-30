package com.Servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

    public loginServlet() {
        // TODO Auto-generated constructor stub
    }
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		UserDetails us=new UserDetails();
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao=new UserDAO(DBConnect.getConn());
		UserDetails user=dao.loginUser(us);
		if(user!=null) { 
			HttpSession session=request.getSession();
			session.setAttribute("userD",user);
			response.sendRedirect("home.jsp");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("login-failed", "Invalid Username or Password");
			response.sendRedirect("login.jsp");
		}
	}

}
