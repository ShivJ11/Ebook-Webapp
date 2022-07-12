<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : All Books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navBar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	<br>
	<h3 class="text-center">Hello Admin!</h3>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg }</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Cover Page</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Book Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img src="../book/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_books.jsp?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-primary"><i
						class="fa-solid fa-pen-to-square"></i> Edit</a> <a
					href="../delete?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i>
						Delete</a></td>

			</tr>
			<%
			}
			%>

		</tbody>
	</table>
	<%-- <table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Cover Page</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Book Categories</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>

			<c:forEach var="b" items="${bookList}">
				<tr>
					<td>${b.bookId}</td>

					<td><a href="edit_books.jsp?id=<%=b.getBookId()%>"
						class="btn btn-sm btn-primary"><i
							class="fa-solid fa-pen-to-square"></i> Edit</a> <a
						href="../delete?id=<%=b.getBookId()%>"
						class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i>
							Delete</a></td>
				</tr>
			</c:forEach>

		</thead>
	</table>

	<!-- For displaying Previous link except for the 1st page -->
	<c:if test="${currentPage != 1}">
		<td><a href="all_books.jsp?page=${currentPage - 1}">Previous</a></td>
	</c:if>

	<!-- For displaying Page numbers. The when condition does not display a link
	for the current page -->
	<table border="1" cellpadding="5" cellspacing="5">
		<tr>
			<c:forEach begin="1" end="${noOfPages}" var="i">
				<c:choose>
					<c:when test="${currentPage eq i}">
						<td>${i}</td>
					</c:when>
					<c:otherwise>
						<td><a href="all_books.jsp?page=${i}">${i}</a></td>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tr>
	</table>

	<!-- For displaying Next link -->
	<c:if test="${currentPage lt noOfPages}">
		<td><a href="all_books.jsp?page=${currentPage + 1}">Next</a></td>
	</c:if>

	<div style="margin-top: 280px;">
		<%@include file="footer.jsp"%>
	</div> --%>
</body>
</html>