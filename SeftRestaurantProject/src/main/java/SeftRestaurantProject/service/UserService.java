package SeftRestaurantProject.service;

import SeftRestaurantProject.model.User;
import SeftRestaurantProject.repository.UserRepository;

public class UserService {
	private UserRepository userRepository = new UserRepository();
	public boolean registerUser(User user) {
		return userRepository.addUser(user);
	}
	public boolean isUsernameOrPhoneNumberExists(String username, String phonenumber) {
	    UserRepository userRepository = new UserRepository();
	    return userRepository.checkIfUserExists(username, phonenumber);
	}
}
