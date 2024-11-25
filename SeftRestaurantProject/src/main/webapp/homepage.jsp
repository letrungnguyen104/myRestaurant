<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/homepage.css">
    <title>Home Page</title>
</head>
<body>
    <div class = "home-page">
        <div class="left-content">
            <div class = "logo"></div>
            <div class = "title-content">
                <p class = "title">Chào mừng bạn đến với nhà hàng của chúng tôi!</p>
            </div>
        </div>

        <div class = "right-content">
            <div class = "top-home-page">
                <h1><b>HOME PAGE</b></h1>
            </div>
            <div class="bottom-home-page">
                <div onclick="window.location.href='choosetable.jsp'">CHỌN BÀN</div>
                <div>XEM MENU</div>
                <div>XEM HOÁ ĐƠN</div>
                <div>TÍCH VÀ XEM ĐIỂM TÍCH LUỸ</div>
                <div onclick="window.location.href='login.jsp'">THOÁT</div>
            </div>
        </div>
        <div class = "clear-fix"></div>
    </div>
</body>
</html>