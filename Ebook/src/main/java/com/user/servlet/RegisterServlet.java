package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBconnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
//			System.out.print(name+" "+email+" "+phno+" "+password+" "+check);
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			
			if(check!=null) {
				UserDAOImpl dao=new UserDAOImpl(DBconnect.getConn());
				boolean f=dao.userRegister(us);
				if(f) {
//					System.out.print("User Registered Successfully");
					session.setAttribute("succMsg", "Registration Successfull.");
					resp.sendRedirect("register.jsp");
				}
				else {
//					System.out.print("Error!!!");
					session.setAttribute("failedMsg", "Error While Registering!!!");
					resp.sendRedirect("register.jsp");
				}
				
			}
			else {
//				System.out.print("Please Agree the Terms & Conditions");	
				session.setAttribute("failedMsg", "Please Agree the Terms & Conditions.");
				resp.sendRedirect("register.jsp");
				}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
