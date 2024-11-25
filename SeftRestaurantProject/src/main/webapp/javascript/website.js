// Order Form Submission
const orderForm = document.querySelector('.order_main form');
const orderButton = document.querySelector('.order_btn');

orderButton.addEventListener('click', function(e) {
    e.preventDefault();  // Ngừng hành động mặc định của form (gửi dữ liệu)
    alert('Đơn hàng của bạn đã được gửi!');
    orderForm.reset();  // Đặt lại form sau khi gửi
});

// Hover Effects on Menu Images
const menuImages = document.querySelectorAll('.menu .menu_box .menu_card .menu_image img');

menuImages.forEach(image => {
    image.addEventListener('mouseover', function() {
        image.style.transform = 'scale(1.1)';
    });

    image.addEventListener('mouseout', function() {
        image.style.transform = 'scale(1)';
    });
});

// Login and Signup Button Redirect
const loginBtn = document.querySelector('.login-btn');
const signupBtn = document.querySelector('.signup-btn');

loginBtn.addEventListener('click', function() {
    window.location.href = '/login';  // Chuyển đến trang đăng nhập
});

signupBtn.addEventListener('click', function() {
    window.location.href = '/signup';  // Chuyển đến trang đăng ký
});
