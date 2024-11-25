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

<%
	List<Table> list = (List<Table>)request.getAttribute("table");
%>

<body>
    <div class="choose-table">
        <div class = "left-content">
            <div class = "table-code"><b>TABLE CODE: B2</b></div>
            <div class = "choose-table-label">
                <label for="">CHỌN BÀN</label>
            </div>
            <div class="pick-area">
			    <form method="get" action="/table">
			        <label for="area"><b>Chọn khu vực</b></label>
			        <input class="area-list" type="text" name="area_id" list="area" onchange="this.form.submit()">
			        <datalist id="area" name="area_id">
			            <option value="1">Khu vực A</option>
			            <option value="2">Khu vực B</option>
			            <option value="3">Khu vực C</option>
			        </datalist>
			    </form>
			</div>
            <div class = "pick-table">
                <div><b>Chọn bàn</b></div>
                <input class = "table-list" type="text" list="table">
               <datalist id="table">
				    <% 
				        if (list != null && !list.isEmpty()) {
				            for (Table table : list) { 
				    %>
				        <option value="<%= table.getTable_id() %>">
				            Bàn <%= table.getTable_id() %>
				        </option>
				    <% 
				            } 
				        } else { 
				    %>
				        <option value="">Không có bàn nào</option>
				    <% 
				        } 
				    %>
			</datalist>
            </div>
            <div class = "button">
                <div class = "confirm-button">Xác nhận</div>
                <div class = "confirm-button" onclick="window.location.href='login.jsp'">Thoát</div>
            </div>
        </div>
        <div class="right-content">
            <div class = "name-of-area"><b>KHU VỰC B</b></div>
            <div class="table-screen">
			    <% 
			        if (list != null && !list.isEmpty()) {
			            for (Table table : list) { 
			    %>
			        <div class="<%= table.getTable_status() == 1 ? "ordered" : "" %>">
			            <div>Bàn <%= table.getTable_id() %></div>
			            <div class="div-bottom"><%= table.getTable_status() == 0 ? "Bàn trống" : "Đang sử dụng" %></div>
			        </div>
			    <% 
			            } 
			        } else { 
			    %>
			        <div>Không có bàn nào trong khu vực này</div>
			    <% 
			        }
			    %>
			</div>
        </div>
    </div>
</body>
</html>