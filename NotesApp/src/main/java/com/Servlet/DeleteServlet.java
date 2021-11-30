package com.Servlet;

import com.DAO.PostDAO;
import com.Db.DBConnect;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer noteid=Integer.parseInt(request.getParameter("node_id"));
		PostDAO dao=new PostDAO(DBConnect.getConn());
		boolean f=dao.DeleteNote(noteid);
		HttpSession session=request.getSession();

		if(f) {
			System.out.println("data deleted successfully");
			
			session.setAttribute("deletedMsg", "Data deleted successfully.");
			response.sendRedirect("showNotes.jsp");
		}
		else {
			System.out.println("data not deleted");
			session.setAttribute("notdeletedMsg", "Data not deleted");
			response.sendRedirect("showNotes.jsp");
		}
		
	}


}
