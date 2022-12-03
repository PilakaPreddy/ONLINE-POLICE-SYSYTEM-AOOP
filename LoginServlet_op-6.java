package com.Praneeth.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email = request.getParameter("username");
		String Password = request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher = null;
		
		if(Email == null || Email.equals(""))
		{
			session.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		if(Password == null || Password.equals(""))
		{
			session.setAttribute("status", "invalidPassword");
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AOOP?useSSL=false","root","PC-1430");
			PreparedStatement pst = con.prepareStatement("select*from register where Email = ? and Password = ?");
			pst.setString(1, Email);
			pst.setString(2, Password);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				session.setAttribute("Email", rs.getString("Email"));
				dispatcher = request.getRequestDispatcher("After_login.jsp");
			}
			else {
				request.setAttribute("status", "error");
				dispatcher = request.getRequestDispatcher("index.jsp");
			}
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
