<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<%@include file="all_Components/allCss.jsp"%>
</head>
<body>
	<%@include file="all_Components/navBar.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-primary">Edit Profile</h4>
						<form action="" method="post">

							<div class="form-group mt-4">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Full Name"
									required="required" name="fname">
							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Email"
									required="required" name="email">
							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Enter Phone Number</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Phone Number"
									required="required" name="phno">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>

							<div class="text-center mt-3">
								<button type="submit" class="btn btn-primary">Update 	
									Me</button>
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