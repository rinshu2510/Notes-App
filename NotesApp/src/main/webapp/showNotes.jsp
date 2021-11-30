
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.DAO.PostDAO"%>
<%@ page import="com.User.Post"%>
<%@ page import="com.Db.DBConnect"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");
if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Notes</title>

<%@ include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<%
	String updateMsg = (String) session.getAttribute("updateMsg");
	if (updateMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=updateMsg%></div>
	<%
	session.removeAttribute("updateMsg");
	}
	%>

	<%
	String notupdated = (String) session.getAttribute("noupdateMsg");
	if (notupdated != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=notupdated%></div>
	<%
	session.removeAttribute("noupdateMsg");
	}
	%>
	<%
	String deletedMsg = (String) session.getAttribute("deletedMsg");
	if (deletedMsg != null) {
	%>
	<div class="alert alert-warning alert-dismissible fade show"
		role="alert">
		<%=deletedMsg%>
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>

	<%
	session.removeAttribute("deletedMsg");
	}
	%>

	<%
	String notdeletedMsg = (String) session.getAttribute("notdeletedMsg");
	if (notdeletedMsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=notdeletedMsg%></div>
	<%
	session.removeAttribute("notdeletedMsg");
	}
	%>

	<div class="container">
		<h2 class="text-center mt-2">Your Notes</h2>
		<%
		if (user3 != null) {
			PostDAO ob = new PostDAO(DBConnect.getConn());
			List<Post> post = ob.getData(user3.getId());
			for (Post po : post) {
		%>
		<div class="row">
			<div class="col-md-12">

				<div class="card mt-3 md-2">
					<img alt="" src="img/penpaper.png"
						class="card-img-top mt-2 mx-auto" style="max-width: 150px;">
					<div class="card-body p-4">
						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>
						<p>
							<b class="text-success">By:- </b> <b class="text-primary"><%=user3.getName()%></b>
						</p>
						<p>
							<b class="text-success">Date:- </b> <b class="text-primary"><%=po.getPdate()%></b>
						</p>
						<div class="container text-center mt-2">
							<a href="edit.jsp?node_id=<%=po.getId()%>"
								class="btn btn-primary">Edit</a> <a
								href="DeleteServlet?node_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>


			</div>

		</div>
		<%
		}
		}
		%>

	</div>

</body>
</html>