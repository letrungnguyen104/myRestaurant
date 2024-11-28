package SeftRestaurantProject.service;

import java.util.List;

import SeftRestaurantProject.model.User;
import SeftRestaurantProject.repository.UserRepository;

public class LoginService {
    private UserRepository userRepository = new UserRepository();
    
    public User checkLogin(String username, String password) {
        List<User> list = userRepository.getUserByUsernameAndPassword(username, password);
        return list.size() > 0 ? list.get(0) : null;
    }
}