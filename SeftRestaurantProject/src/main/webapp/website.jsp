<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Restaurant</title>
    <link rel="stylesheet" href="assets/website.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <section id="Home">
        <nav>
            <div class="logo">
                <img src="img/websiteimg/Logo.png">
            </div>

            <ul>
                <li><a href="#Home">Home</a></li>
                <li><a href="#About">About</a></li>
                <li><a href="#Menu">Menu</a></li>
                <li><a href="#Order">Order</a></li>
            </ul>

            <div class="icon">
                <button class="login-btn" onclick="window.location.href='login.jsp'">Đăng nhập</button>
                <button class="signup-btn" onclick="window.location.href='signup.jsp'">Đăng ký</button>
            </div>

        </nav>
        <div class="main">
            <div class="main_text">
                <h1>The<span>BestChoice</span><br>For You Today</h1>
            </div>

            <div class="main_image">
                <img src="https://png.pngtree.com/png-clipart/20231018/original/pngtree-mastering-the-art-of-bbq-ribs-perfection-transpreant-background-png-image_13354447.png">
            </div>
        </div> 

    </section>

    <!--About-->
    <div class="about" id="About">
        <div class="about_main">

            <div class="image">
                <img src="img/websiteimg/Salad-Da-Ca-Hoi.jpg">
            </div>

            <div class="about_text">
                <h1><span>About</span> Us</h1>
                <h3>Why Choose us?</h3>
                <p>
                    Chúng tôi mang đến cho bạn những món ăn ngon miệng, đậm đà hương vị, được chế biến từ nguyên liệu tươi ngon nhất. Với không gian ấm cúng và phục vụ tận tình, chúng tôi cam kết mang đến cho bạn trải nghiệm ẩm thực tuyệt vời, phù hợp cho mọi dịp sum họp gia đình và bạn bè. Hãy đến và cảm nhận sự khác biệt tại nhà hàng của chúng tôi!
                </p>
            </div>

        </div>

    </div>

    <!--Menu-->
    <div class="menu" id="Menu">
        <h1>Our<span>Menu</span></h1>

        <div class="menu_box">
            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/lauhaisan.jpg">
                </div>

                <div class="menu_info">
                    <h2>Lẩu Hải Sản </h2>

                    <h3>$15.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>

                </div>

            </div> 
            
            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/salad.jpg">
                </div>

                <div class="menu_info">
                    <h2>Salad</h2>
                    <h3>$2.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>

                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/suonbonuong.jpeg">
                </div>

                <div class="menu_info">
                    <h2>Sườn bò nướng</h2>
                    <h3>$10.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>

                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/smoothy.jpg">
                </div>

                <div class="menu_info">
                    <h2>Smoothie</h2>
                    <h3>$8.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>

                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/goimuc.jpg">
                </div>

                <div class="menu_info">
                    <h2>Gỏi mực</h2>
                    <h3>$8.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>
                   
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/ramchiengion.jpg">
                </div>

                <div class="menu_info">
                    <h2>Ram chiên</h2>
                    <h3>$2.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>

                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/juse.jpg">
                </div>

                <div class="menu_info">
                    <h2>Nước ép</h2>
                    <h3>$1.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>
                   
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/cha.jpg">
                </div>

                <div class="menu_info">
                    <h2>Chả lụa</h2>
                    <h3>$1,2.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>
                    
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/macaron.jpg">
                </div>

                <div class="menu_info">
                    <h2>Macaron</h2>
                    <h3>$3.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>
                  
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/ice_cream.jpg">
                </div>

                <div class="menu_info">
                    <h2>Kem</h2>
                    <h3>$1.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>

                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/Spanchi.jpg">
                </div>

                <div class="menu_info">
                    <h2>Bánh Gato</h2>
                    <h3>$1.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>
                   
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="img/websiteimg/panacotta.jpg">
                </div>

                <div class="menu_info">
                    <h2>Pana Cotta</h2>
                    <h3>$1.00</h3>
                    <div class="menu_icon">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i>
                    </div>
                
                </div>

            </div> 
            
        </div>

    </div>

    <!--Order-->

    <div class="order" id="Order">
        <h1><span>Order</span>Now</h1>

        <div class="order_main">

            <div class="order_image">
                <img src="img/websiteimg/order_image.png">
            </div>

            <form action="submitOrder" method="POST"> 
                <div class="input">
                    <p>Table ID</p>
                    <select name="table_id" required>
                        <option value="" disabled selected>Select Table ID</option>
                        <option value="1">A1</option>
                        <option value="2">A2</option>
                        <option value="3">A3</option>
                        <option value="4">A4</option>
                        <option value="5">A5</option>
                        <option value="6">B1</option>
                        <option value="7">B2</option>
                        <option value="8">B3</option>
                        <option value="9">B4</option>
                        <option value="10">B5</option>
                    </select>
                </div>     
            
                <div class="input">
                    <p>Number of People</p>
                    <input type="number" name="people" placeholder="Type Here" required>
                </div>
            
                <div class="input">
                    <p>Date</p>
                    <input type="date" name="date" required>
                </div>
            
                <div class="input">
                    <p>Time</p>
                    <input type="time" name="time" required>
                </div>
            
                <button type="submit" class="order_btn">Order Now</button>
            </form>
            

        </div>

    </div>

    <!--Footer-->

    <footer>
        <div class="footer_main">

            <div class="footer_tag">
                <h2>Quick Link</h2>
                <p>Home</p>
                <p>About</p>
                <p>Menu</p>
                <p>Order</p>
            </div>

            <div class="footer_tag">
                <h2>Contact</h2>
                <p>+84944068045</p>
                <p>+84867656419</p>
                <p>leophannhan@gmail.com</p>
                <p>letrungnguyen@gmail.com</p>
            </div>

            <div class="footer_tag">
                <h2>Our Service</h2>
                <p>Fast Delivery</p>
                <p>Easy Payments</p>
            </div>

            <div class="footer_tag">
                <h2>Follows</h2>
                <i class="fa-brands fa-facebook-f"></i>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-linkedin-in"></i>
            </div>

        </div>

    </footer>
    
</body>
</html>