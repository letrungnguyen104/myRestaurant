package SeftRestaurantProject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SeftRestaurantProject.service.LoginService;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet{
	private LoginService loginService = new LoginService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		boolean isLogin = loginService.checkLogin(username, password);
		if(isLogin) {
			resp.sendRedirect("homepage.jsp");
		}
		else {
			resp.sendRedirect("login.jsp?error=Wrong account or password!");
	        return;
		}
	}
}
