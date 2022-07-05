<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBconnect"%>
<html>
<head>
<link rel="stylesheet" href="all_Components/popupStyle.css">
</head>
<body>
	<%
	BookDAOImpl dao10 = new BookDAOImpl(DBconnect.getConn());
	List<BookDtls> list10 = dao10.getRecentBook();
	for (BookDtls b10 : list10) {
	%>
	<div class="popup fade-in-image imgText">

		<div style="float: left; width: 40%">
			<a href="view_books.jsp?bid=<%=b10.getBookId()%>"> <img
				src="book/<%=b10.getPhotoName()%>"
				style="width: 90px; height: 150px;" ></a>
		</div>
		<div style="float: left; width: 60%">

			<button id="close" class="right">&times;</button>
			<h4>Ads</h4>
			<p>Checkout this new book !!<br>Name : <%=b10.getBookName()%><br>By : <%=b10.getAuthor()%></p>
		</div>

	</div>
	<%
	}
	%>
	<!--Script-->
	<script src="all_Components/popupScript.js"></script>
</body>
</html>
