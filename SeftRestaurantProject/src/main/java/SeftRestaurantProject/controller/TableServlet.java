package SeftRestaurantProject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SeftRestaurantProject.model.Table;
import SeftRestaurantProject.repository.TableRepository;
import SeftRestaurantProject.service.TableService;

@WebServlet(name = "TableServlet", urlPatterns = "/table")
public class TableServlet extends HttpServlet {
    private TableService tableService = new TableService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String areaIdParam = req.getParameter("area_id"); // Lấy tham số area_id từ URL
        int areaId = (areaIdParam != null) ? Integer.parseInt(areaIdParam) : 1; // Mặc định là 1 nếu không có tham số
        List<Table> tables = tableService.getTable(areaId); // Truyền area_id vào TableService
        req.setAttribute("table", tables);
        req.getRequestDispatcher("/choosetable.jsp").forward(req, resp);
    }
}
