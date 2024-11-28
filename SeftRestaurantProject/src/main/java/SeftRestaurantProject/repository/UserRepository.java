package SeftRestaurantProject.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import SeftRestaurantProject.config.MysqlConnection;
import SeftRestaurantProject.model.User;

public class UserRepository {
	public List<User> getUserByUsernameAndPassword(String username, String password){
		List<User> list = new ArrayList<User>();
		Connection connection = MysqlConnection.getConnection();
		String query = "SELECT\r\n"
				+ "	u.*,\r\n"
				+ "    ur.role_id\r\n"
				+ "FROM users AS u\r\n"
				+ "LEFT JOIN user_role AS ur ON u.id = ur.id\r\n"
				+ "WHERE u.username = ? AND u.password = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				User user = new User();
				user.setId(resultSet.getInt("id"));
				user.setFullname(resultSet.getString("fullname"));
				user.setDateofbirth(resultSet.getString("dateofbirth"));
				user.setPhonenumber(resultSet.getString("phonenumber"));
				user.setGender(resultSet.getInt("gender"));
				user.setUsername(resultSet.getString("username"));
				user.setRole_ID(resultSet.getInt("role_id"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(connection != null)
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return list;
	}
	public boolean addUser(User user) {
	    String query = "INSERT INTO users (fullname, dateofbirth, phonenumber, gender, username, password) VALUES (?, ?, ?, ?, ?, ?)";
	    try (Connection connection = MysqlConnection.getConnection();
	        PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        preparedStatement.setString(1, user.getFullname());
	        preparedStatement.setString(2, user.getDateofbirth());
	        preparedStatement.setString(3, user.getPhonenumber());
	        preparedStatement.setInt(4, user.getGender());
	        preparedStatement.setString(5, user.getUsername());
	        preparedStatement.setString(6, user.getPassword());
	        int rowsAffected = preparedStatement.executeUpdate();
	        return rowsAffected > 0;
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}
	public boolean checkIfUserExists(String username, String phonenumber) {
	    String query = "SELECT COUNT(*) FROM users WHERE username = ? OR phonenumber = ?";
	    try (Connection connection = MysqlConnection.getConnection();
	         PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        preparedStatement.setString(1, username);
	        preparedStatement.setString(2, phonenumber);
	        ResultSet resultSet = preparedStatement.executeQuery();
	        if (resultSet.next()) {
	            int count = resultSet.getInt(1);
	            return count > 0; // Trả về true nếu tồn tại
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return false;
	}

}
