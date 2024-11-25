<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Self Restaurant Login</title>
    <link rel="stylesheet" href="assets/login.css">
    <script src="login.js"></script>
</head>
<body>
    <div class="container">
        <div class="main-form">
            <form action="http://localhost:8080/SeftRestaurantProject/login" method="POST">
                <h2>SELF RESTAURANT</h2>
                <h3>LOGIN</h3>
                <%
					    String error = request.getParameter("error");
					    if (error != null) {
							%>
					    		<p style="color: red; font-weight: 100; font-size: 12px;"><%= error %></p>
							<%
					    }
				%>
                <div class="information">
                    <input type="text" name="username" class="username" placeholder="Username" required>
                    <input type="password" name="password" class="password" placeholder="Password" required>
                </div>
                <div class="button">
                    <button type="button" onclick="window.location.href='index.jsp'">Cancel</button>
                    <button type="submit">Log in</button>
                </div>
                <button class="create-acc-btn" type="button" onclick="window.location.href='signup.jsp'">Create New Account</button>
            </form>
        </div>
    </div>
</body>
</html>
