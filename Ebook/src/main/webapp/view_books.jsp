<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBconnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
	BookDtls b = dao.getBookById(bid);
	%><%=b.getBookName()%> Book</title>
<%@include file="all_Components/allCss.jsp"%>
</head>
<body>
	<%@include file="all_Components/navBar.jsp"%>

	

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border">
				<img src="book/<%=b.getPhotoName()%>"
					style="width: 150px; height: 200px"><br>
				<h4 class="mt-2">
					Book Name : <span class="text-success"><%=b.getBookName()%></span>
				</h4>
				<h4>
					Author : <span class="text-success"><%=b.getAuthor()%></span>
				</h4>
				<h4>
					Category : <span class="text-success"><%=b.getBookCategory()%></span>
				</h4>
			</div>

			<div class="col-md-6 text-center p-5 border">
				<h1><%=b.getBookName()%></h1>

				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<h5 class="text-primary">Contact to Seller
				</h5>
				<h5 class="text-success">
					<i class="fa-solid fa-envelope-circle-check "></i> Email :
					<%=b.getEmail()%></h5>
				<%
				}
				%>

				<br>
				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-coins fa-2x"></i>
						<p>Cash on Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free Shipping</p>
					</div>

				</div>

				<%
				if ("Old".equals(b.getBookCategory())) {
				%>
				<div class="text-center">
					<a href="index.jsp" class="btn btn-success"><i
						class="fa-solid fa-cart-arrow-down"></i> Continue Shopping</a> <a
						href="" class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
				</div>
				<%
				} else {
				%>
				<div class="text-center">
					<a href="" class="btn btn-primary"><i
						class="fa-solid fa-cart-arrow-down"></i> Add to cart</a> <a href=""
						class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i> <%=b.getPrice()%></a>
				</div>
				<%
				}
				%>
				
			</div>
		</div>
	</div>
	<%@include  file="chatIndex.jsp" %>
</body>
</html>