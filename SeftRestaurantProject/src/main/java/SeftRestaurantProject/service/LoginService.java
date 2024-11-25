package SeftRestaurantProject.service;

import java.util.List;

import SeftRestaurantProject.model.User;
import SeftRestaurantProject.repository.UserRepository;

public class LoginService {
	private UserRepository userRepository = new UserRepository();
	
	public boolean checkLogin(String username, String password) {
		List<User> list = userRepository.getUserByUsernameAndPassword(username, password);
		if(list.size() > 0) return true;
		else return false;
	}
}
