package SeftRestaurantProject.service;

import java.util.ArrayList;
import java.util.List;

import SeftRestaurantProject.model.Table;
import SeftRestaurantProject.repository.TableRepository;

public class TableService {
    private TableRepository tableRepository = new TableRepository();

    public List<Table> getTable(int area_id) {
        return tableRepository.getTablesByArea(area_id);
    }
}
