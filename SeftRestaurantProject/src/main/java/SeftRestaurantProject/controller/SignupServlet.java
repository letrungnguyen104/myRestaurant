package SeftRestaurantProject.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SeftRestaurantProject.model.User;
import SeftRestaurantProject.service.UserService;

@WebServlet(name = "SignupServlet", urlPatterns = {"/signup"})
public class SignupServlet extends HttpServlet{
	private UserService userService = new UserService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    req.getRequestDispatcher("signup.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String fullname = req.getParameter("fullname");
	    String phonenumber = req.getParameter("phonenumber");
	    String dateofbirth = req.getParameter("dateofbirth");
	    String genderParam = req.getParameter("gender");
	    int gender = "Nam".equals(genderParam) ? 1 : ("Nu".equals(genderParam) ? 2 : 3);
	    String username = req.getParameter("username");
	    String password = req.getParameter("password");
	    String confirmPassword = req.getParameter("confirm-password");
	    // Kiểm tra xác nhận mật khẩu
	    if (!password.equals(confirmPassword)) {
	        resp.sendRedirect("signup.jsp?error=Passwords do not match");
	        return;
	    }
	    // Kiểm tra tồn tại username hoặc phonenumber
	    if (userService.isUsernameOrPhoneNumberExists(username, phonenumber)) {
	        resp.sendRedirect("signup.jsp?error=Username or Phone number already exists");
	        return;
	    }
	    // Tạo đối tượng User
	    User newUser = new User();
	    newUser.setFullname(fullname);
	    newUser.setPhonenumber(phonenumber);
	    newUser.setDateofbirth(dateofbirth);
	    newUser.setGender(gender);
	    newUser.setUsername(username);
	    newUser.setPassword(password);
	    // Đăng ký người dùng
	    boolean isRegistered = userService.registerUser(newUser);
	    if (isRegistered) {
	        resp.sendRedirect("signup.jsp?success=Registration successful! Click cancel to login!");
	    } else {
	        resp.sendRedirect("signup.jsp?error=Registration failed");
	    }
	}
}
