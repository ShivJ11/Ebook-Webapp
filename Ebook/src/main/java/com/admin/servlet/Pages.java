package com.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BookDAOImpl;
import com.DB.DBconnect;
import com.entity.BookDtls;

@WebServlet("/pages")
public class Pages extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page = 1;
		int recordsPerPage = 5;
		if (req.getParameter("page") != null)
			page = Integer.parseInt(req.getParameter("page"));
		BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
		List<BookDtls> list = dao.paginationAllBooks((page - 1) * recordsPerPage, recordsPerPage);
		int noOfRecords = dao.getNoOfRecords();
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		req.setAttribute("bookList", list);
		req.setAttribute("noOfPages", noOfPages);
		req.setAttribute("currentPage", page);
		RequestDispatcher view = req.getRequestDispatcher("admin/all_books.jsp");
		view.forward(req, resp);
	}

}
