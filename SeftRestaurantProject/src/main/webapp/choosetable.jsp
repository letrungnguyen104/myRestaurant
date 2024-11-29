<%@page import="SeftRestaurantProject.model.Table"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/choosetable.css">
    <title>Chọn bàn</title>
</head>
<body>
    <div class="choose-table">
        <div class = "left-content">
            <div class = "table-code"><b>TABLE CODE: B2</b></div>
            <div class = "choose-table-label">
                <label for="">CHỌN BÀN</label>
            </div>
            <div class = "pick-area">
                <div><b>Chọn khu vực</b>
                </div>
                <select id = "area" class = "area">
                    <option value="Khu vực A">Khu vực A</option>
                    <option value="Khu vực B">Khu vực B</option>
                    <option value="Khu vực C">Khu vực C</option>
                </select>
            </div>
            <div class = "pick-table">
                <div><b>Chọn bàn</b></div>
                <select id = "table" class = "table">
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                </select>
            </div>
            <div class = "button">
                <div class = "confirm-button">Xác nhận</div>
                <div class = "confirm-button">Thoát</div>
            </div>
        </div>
        <div class="right-content">
            <div class = "name-of-area"><b>KHU VỰC B</b></div>
            <div class = "table-screen">
                <div>
                    <div>B1</div>
                    <div class = "div-bottom">Bàn trống</div>
                </div>
                <div>
                    <div>B2</div>
                    <div class = "div-bottom">Bàn trống</div>
                </div>
                <div class = "ordered">
                    <div>B3</div>
                    <div class = "div-bottom">27'</div>
                </div>
                <div>
                    <div>B4</div>
                    <div class = "div-bottom">Bàn trống</div>
                </div>
                <div>
                    <div>B5</div>
                    <div class = "div-bottom">Bàn trống</div>
                </div>
                <div>
                    <div>B6</div>
                    <div class = "div-bottom">Bàn trống</div>
                </div>
                <div>
                    <div>B7</div>
                    <div class = "div-bottom">Bàn trống</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>