<%@page import="com.entity.Cart"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.CartDAOImpl"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Cart</title>
<%@include file="all_Components/allCss.jsp"%>

</head>
<body>
	<%@include file="all_Components/navBar.jsp"%>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg }">
		<div class="alert alert-success" role="alert">${succMsg }</div>
			<c:remove var="succMsg" scope="session"/>
	</c:if>
	
	<c:if test="${not empty failed }">
		<div class="alert alert-danger" role="alert">${failed }</div>
			<c:remove var="failed" scope="session"/>
	</c:if>

	<div class="container">
		<div class="row p-3">
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Your Cart</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								User u = (User) session.getAttribute("userobj");
								CartDAOImpl dao = new CartDAOImpl(DBconnect.getConn());
								List<Cart> cart = dao.getBookByUser(u.getId());
								Double totalprice = 0.0;
								for (Cart c : cart) {
									totalprice = c.getTotalPrice();
								%>
								<tr>
									<th scope="row"><%=c.getBookName()%></th>
									<td><%=c.getAuthor()%></td>
									<td><%=c.getPrice()%></td>
									<td><a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>&&cid=<%=c.getCid()%>"
										class="btn btn-sm btn-danger">Remove</a></td>
								</tr>
								<%
								}
								%>
								<tr>
									<td>Total Price</td>
									<td></td>
									<td></td>
									<td><i class="fa-solid fa-indian-rupee-sign"></i> <%=totalprice%></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="cl-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Your Details</h3>
						<form>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
										class="form-control" id="inputEmail4" value="<%=u.getName()%>"readonly="readonly">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email"
										class="form-control" id="inputPassword4" value="<%=u.getEmail()%>"readonly="readonly">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Contact</label> <input type="number"
										class="form-control" id="inputEmail4" value="<%=u.getPhno()%>"readonly="readonly">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4" >
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">State</label> <input type="text"
										class="form-control" id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">ZIP</label> <input type="number"
										class="form-control" id="inputPassword4">
								</div>
							</div>

							<div class="form-group">
								<label>Payment Method</label> <select class="form-control">
									<option>--Select--</option>
									<option>Cash on Delivery</option>
								</select>
							</div>
							<div class="text-center">
								<button class="btn btn-warning text-white">Order Now</button>
								<a href="index.jsp" class="btn btn-success">Continue
									Shopping</a>
							</div>


						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>