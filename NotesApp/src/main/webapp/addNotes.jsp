<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="container">
			<h1 class="text-center mt-2">Add Your Notes</h1>
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">
							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>

							<label for="exampleFormControlInput1">Enter Title</label> <input
								type="text" class="form-control" id="exampleFormControlInput1"
								name="title" required="required">
						</div>
						<div class="form-group">
							<label for="exampleFormControlTextarea1">Enter Content</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows=15 name="content" required="required"></textarea>
						</div>
						<div class="container text-center py-2">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>
	<%@ include file="all_component/footer.jsp"%>
</body>
</html>