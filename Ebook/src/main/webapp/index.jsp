<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Index</title>
<%@include file="all_Components/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #dad9d8;
}
</style>
</head>
<body>
	<%@include file="all_Components/navBar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-white">EBook</h2>
	</div>

	
	<!-- Start Recent Book -->

	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add to Cart</a> <a href=""
								class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-indian-rupee-sign"></i> 599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm"> View all</a>
		</div>
	</div>
	<!-- End Recent Book -->

	<hr>

	<!-- Start New Book -->

	<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm">Add to Cart</a> <a
								href="" class="btn btn-success btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm"> View all</a>
		</div>
	</div>
	<!-- End New Book -->

	<hr>



	<!-- Start Old Book -->

	<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/javaBook.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Java Programming</p>
						<p>K. Somasundaram</p>
						<p>Category : New</p>
						<div class="row">
							<a href="" class="btn btn-success btn-sm ml-5">View Details</a> <a
								href="" class="btn btn-danger btn-sm ml-1">599</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center mt-2">
			<a href="" class="btn btn-danger btn-sm"> View all</a>
		</div>
	</div>
	<!-- End Old Book -->

	<%@include file="all_Components/footer.jsp"%>
</body>
</html>