<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
						<form>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required">
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
	<%@include file="all_Components/footer.jsp"%>
</body>
</html>