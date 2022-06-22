package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookOrderImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBconnect;
import com.entity.Book_Order;
import com.entity.Cart;

@WebServlet("/order")
public class OrderServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session=req.getSession();
			
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("username");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String address=req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pincode=req.getParameter("pincode");
			String paymentType=req.getParameter("payment");
			
			String fullAddress=address+", "+landmark+", "+city+", "+state+", "+pincode;
//			System.out.println(name+" "+email+" "+phno+" "+fullAddress+" "+paymentType);
			
			CartDAOImpl dao=new CartDAOImpl(DBconnect.getConn());
			List<Cart> blist=dao.getBookByUser(id);
			BookOrderImpl dao2=new BookOrderImpl(DBconnect.getConn());
			Book_Order o=null;
			
			int i=dao2.getOrderNo();
			Random r=new Random();
			ArrayList<Book_Order> orderList=new ArrayList<Book_Order>();
			for(Cart c:blist) {
//				System.out.println(c.getBookName()+" "+c.getAuthor()+" "+c.getPrice());
				o=new Book_Order();
				o.setOrderId("BOOK_ORD-00"+i);
				o.setUsername(name);
				o.setEmail(email);
				o.setPhno(phno);
				o.setFullAddress(fullAddress);
				o.setBookName(c.getBookName());
				o.setAuthor(c.getAuthor());
				o.setPrice(c.getPrice()+" ");
				o.setPaymenttype(paymentType);
				orderList.add(o);
				i++;
			}
			
			if("noselect".equals(paymentType)) {
				session.setAttribute("failed", "Select Payment Method");
				resp.sendRedirect("checkout.jsp");
			}
			else {
				boolean f=dao2.saveOrder(orderList);
				if(f) {
					resp.sendRedirect("order_success.jsp");
					
				}
				else {
					session.setAttribute("failed", "Failed to place your Order");
					resp.sendRedirect("checkout.jsp");
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
