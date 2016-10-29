package com.router.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.router.dao.UserDetailDAO;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserDetailDAO userDetailDAO = new UserDetailDAO();
		String loginStatus = userDetailDAO.checkLogin(username, password);
		System.out.println(loginStatus);
		if(loginStatus=="TRUE")
		{
			String ipAddress = userDetailDAO.getIpAddress(username);
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("ip_address", ipAddress);
			
			response.sendRedirect("dashboard.jsp");
			
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
		
	}

}
