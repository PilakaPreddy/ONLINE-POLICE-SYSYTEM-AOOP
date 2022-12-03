package com.Praneeth.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class After_loginServlet
 */
@WebServlet("/After_login")
public class After_loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name=request.getParameter("uname");
		String Email=request.getParameter("email");
		String Contact=request.getParameter("num");
		String Address=request.getParameter("address");
		String Complaint=request.getParameter("complaint");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AOOP?useSSL=false","root","PC-1430");
			PreparedStatement pst = con.prepareStatement("insert into details(Name,Email,Contact,Address,Complaint)values(?,?,?,?,?)");
			pst.setString(1, Name);
			pst.setString(2, Email);
			pst.setString(3, Contact);
			pst.setString(4, Address);
			pst.setString(5, Complaint);
			
			int rowCount = pst.executeUpdate();   // executeUpdate because query is non-select query
			dispatcher = request.getRequestDispatcher("After_login.jsp");
			if (rowCount > 0)
			{
				request.setAttribute("status", "success");
				
			}
			else {
				request.setAttribute("status", "failed");
			}
			
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
