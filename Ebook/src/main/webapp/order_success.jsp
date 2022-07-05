<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order : Details</title>
<%@include file="all_Components/allCss.jsp"%>
</head>
<body>
	<%@include file="all_Components/navBar.jsp"%>
	<div class="conatiner text-center mt-3"><i class="fa-solid fa-circle-check fa-5x text-success"></i>
		<h1>Thank You!!</h1>
		<h2>Your Order Placed Successfully</h2>
		<h5>Within 7 working days your order will be Delivered</h5>
		<a href="index.jsp" class="btn btn-primary mt-3">Home</a>
		<a href="order.jsp" class="btn btn-success mt-3">View Order</a>
	
	</div>
	
	<%@include  file="chatIndex.jsp" %>
</body>
</html>