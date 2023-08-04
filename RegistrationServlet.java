package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/extra_users", "root", "msq.575:MRN!");
			java.sql.PreparedStatement pst = con.prepareStatement("insert into extra_users(nom, prenom, email, password) values(?,?,?,?)");
			pst.setString(1,  nom);
			pst.setString(2,  prenom);
			pst.setString(3,  email);
			pst.setString(4,  password);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
			if (rowCount >0) {
				request.setAttribute("status",  "success");
				             }
			else {
				request.setAttribute("status",  "failed");
				 }
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}finally {
			try {
			con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	

}
}
