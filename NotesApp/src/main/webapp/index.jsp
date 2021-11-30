<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back_img {
	background-image: url("img/image-20170131-13261-mkv1t5.jpg");
	width: 100%;
	height: 83vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back_img">
		<div class="text-center">
			<h1 class="text-white pt-5">
				<i class="fa fa-book " aria-hidden="true" ></i>E Notes-Save Your Notes
			</h1>
			<a href="login.jsp" class="btn btn-light "> <i
				class="fa fa-user-circle-o " aria-hidden="true"></i> Login
			</a> <a href="register.jsp" class="btn btn-light"><i
				class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>
