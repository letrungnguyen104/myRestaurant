package SeftRestaurantProject.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import SeftRestaurantProject.config.MysqlConnection;
import SeftRestaurantProject.model.Table;

public class TableRepository {
	public static List<Table> getTablesByArea(int area_id) {
		List<Table> tables = new ArrayList<>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Giả sử bạn có một phương thức để lấy kết nối cơ sở dữ liệu
            connection = MysqlConnection.getConnection();

            String query = "SELECT t.table_id, t.seats, t.table_status, a.area_name, t.area_id FROM tables t " +
                    "JOIN areas a ON t.area_id = a.area_id " +
                    "WHERE a.area_id = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, area_id);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            	Table table = new Table();
                table.setTable_id(resultSet.getInt("table_id"));
                table.setSeats(resultSet.getInt("seats"));
                table.setTable_status(resultSet.getInt("table_status"));
                table.setArea_id(resultSet.getInt("area_id"));
                tables.add(table);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đảm bảo đóng các tài nguyên để tránh rò rỉ
            try { if (resultSet != null) resultSet.close(); } catch (Exception e) { e.printStackTrace(); }
            try { if (preparedStatement != null) preparedStatement.close(); } catch (Exception e) { e.printStackTrace(); }
            try { if (connection != null) connection.close(); } catch (Exception e) { e.printStackTrace(); }
        }

        return tables;
    }
}
