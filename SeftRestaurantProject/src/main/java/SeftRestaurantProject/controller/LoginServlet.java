package SeftRestaurantProject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SeftRestaurantProject.model.User;
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
		User user = loginService.checkLogin(username, password);
	    if (user != null) {
	        int roleId = user.getRole_ID(); // Lấy role_id của người dùng
	        if (roleId == 0) {
	            resp.sendRedirect("homepage.jsp"); // Chuyển hướng đến trang cho khách
	        } else if (roleId == 3) {
	            resp.sendRedirect("homepagechef.jsp"); // Chuyển hướng đến trang cho đầu bếp
	        } else {
	            resp.sendRedirect("homepage.jsp"); // Mặc định chuyển hướng
	        }
	    } else {
	        resp.sendRedirect("login.jsp?error=Wrong account or password!");
	    }
	}
}
