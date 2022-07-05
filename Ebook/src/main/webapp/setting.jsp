<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Settings</title>
<%@include file="all_Components/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body>
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_Components/navBar.jsp"%>
	<div class="container">
	<c:if test="${not empty userobj}">
		<h3 class="text-center">Hello, ${userobj.name}</h3>
	</c:if>
		
		<div class="row">
			<div class="col-md-4 mt-3">
				<div>
					<a href="sell_book.jsp">
						<div class="card">
							<div class="card-body text-center ">
								<div class="text-primary">
									<i class="fa-solid fa-book-open-reader fa-3x"></i>
								</div>
								<h3>Sell Old Book</h3>
							</div>
						</div>
					</a>
				</div>
			</div>
			
			<div class="col-md-4 mt-3">
				<div>
					<a href="old_book.jsp">
						<div class="card">
							<div class="card-body text-center ">
								<div class="text-warning">
									<i class="fa-solid fa-book-bookmark fa-3x"></i>
								</div>
								<h3>Old Book</h3>
							</div>
						</div>
					</a>
				</div>
			</div>

			<div class="col-md-4 mt-3">
				<div>
					<a href="edit_profile.jsp">
						<div class="card">
							<div class="card-body text-center ">
								<div class="text-primary">
									<i class="fa-solid fa-user-pen fa-3x"></i>
								</div>
								<h3>Edit Profile</h3>
							</div>
						</div>
					</a>
				</div>
			</div>

			

			<div class="col-md-6 mt-3">
				<div>
					<a href="order.jsp">
						<div class="card">
							<div class="card-body text-center ">
								<div class="text-success">
									<i class="fa-solid fa-box-open fa-3x"></i>
								</div>
								<h3>My Order</h3>
								<p>Track your Order</p>
							</div>
						</div>
					</a>
				</div>
			</div>

			<div class="col-md-6 mt-3">
				<div>
					<a href="helpline.jsp">
						<div class="card">
							<div class="card-body text-center ">
								<div class="text-danger">
									<i class="fa-solid fa-circle-user fa-3x"></i>
								</div>
								<h3>Help Center</h3>
								<p>24*7 Service</p>
							</div>
						</div>
					</a>
				</div>
			</div>

		</div>
	</div>
	<%@include  file="chatIndex.jsp" %>
	<div style="margin-top: 120px;">
		<%@include file="all_Components/footer.jsp"%>
	</div>
</body>
</html>