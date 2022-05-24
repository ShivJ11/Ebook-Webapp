<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Login</title>
<%@include file="all_Components/allCss.jsp"%>
</head>
<body>
	<%@include file="all_Components/navBar.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="cl-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Login Page</h4>
						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg }</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty succMsg }">
							<h5 class="text-center text-success">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						

							<form action="login" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email"
										required="required" name="email"> <small
										id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>


								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" class="form-control"
										id="exampleInputPassword1" placeholder="Password"
										required="required" name="password">
								</div>


								<div class="text-center mt-2">
									<button type="submit" class="btn btn-primary">Login</button>
									<br>
									<div class="text-center mt-2">
										<a href="register.jsp">Create Account</a>
									</div>
								</div>
							</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 120px;">
		<%@include file="all_Components/footer.jsp"%>
	</div>
</body>
</html>