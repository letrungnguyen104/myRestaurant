<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="assets/signup.css">
</head>
<body>
    <div class="container">
        <div class="main-form">
            <form action="http://localhost:8080/SeftRestaurantProject/signup" method="POST">
                <div class = "title">
                    <h2>SELF RESTAURANT</h2>
                    <h3>SIGN UP</h3>
                    <%
					    String error = request.getParameter("error");
					    if (error != null) {
							%>
					    		<p style="color: red; font-weight: bold;"><%= error %></p>
							<%
					    }
					%>
					<%
					    String successMessage = request.getParameter("success");
					    if (successMessage != null) {
							%>
							    <p style="color: blue; font-weight: bold;"><%= successMessage %></p>
							<%
						}
					%>
                </div>
                <div class = "information">
                    <div class="fullname">
                        <label for="">Fullname</label><br>
                        <input type="text" name = "fullname">
                    </div>
                    <div class="phone-number">
                        <label for="">Phone Number</label><br>
                        <input type="text" name = "phonenumber">
                    </div>
                    <div class="dateofbirth">
                        <label for="">Date Of Birth</label><br>
                        <input type="date" name = "dateofbirth">
                    </div>
                    <div class="gender">
                        <label for="">Gender</label><br>
                        <div class = "details-gender">
                            <div>
                                <label for="" class = "Nam" style="font-weight: lighter;">Male</label>
                                <input type="radio" value="Nam" name = "gender">
                            </div>

                            <div>
                                <label for="" class = "Nu" style="font-weight: lighter;">Female</label>
                                <input type="radio" value="Nu" name = "gender">
                            </div>
                            
                            <div>
                                <label for="" class = "Khac" style="font-weight: lighter;">Other</label>
                                <input type="radio" value="Khac" name = "gender">
                            </div>
                        </div>
                    </div>
                    <div class = "account">
                        <div class = "username">
                            <label for="">Username</label><br>
                            <input type="text" name = "username">
                        </div>
                        <div class = "password">
                            <label for="">Password</label><br>
                            <input type="password" name = "password">
                        </div>
                        <div class = "confirm-password">
                            <label for="">Password</label><br>
                            <input type="password" name = "confirm-password">
                        </div>
                    </div>
                    <div class = "button">
                        <button type="button" onclick="window.location.href='login.jsp'">Cancel</button>
                        <button type="submit">Sign Up</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>