<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.User.Post"%>
<%@ page import="com.Db.DBConnect"%>
<%
UserDetails user4 = (UserDetails) session.getAttribute("userD");
if (user4 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
<%
Integer noteid=Integer.parseInt(request.getParameter("node_id"));
PostDAO post=new PostDAO(DBConnect.getConn());
Post p=post.getDataById(noteid);
%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="container">
			<h1 class="text-center mt-2">Edit Your Notes</h1>
			
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServlet" method="post">
					<input type="hidden" value="<%=noteid %>" name="noteid">
						<div class="form-group">

							<label for="exampleFormControlInput1">Enter Title</label> <input
								type="text" class="form-control" id="exampleFormControlInput1"
								name="title" required="required" value="<%=p.getTitle()%>">
						</div>
						<div class="form-group">
							<label for="exampleFormControlTextarea1">Enter Content</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="15" name="content" required="required"><%=p.getContent()%></textarea>
						</div>
						<div class="container text-center py-2">
							<button type="submit" class="btn btn-primary">Edit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="all_component/footer.jsp"%>

</body>
</html>