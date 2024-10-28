<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <script>
        function showNotification(message) {
            if (Notification.permission === "granted") {
                new Notification(message);
            }
        }

        <#if loginFailed?exists && loginFailed>
            window.onload = function() {
                showNotification("Invalid email or password");
            };
        </#if>
    </script>
    <meta charset="UTF-8">
    <meta name="keywords" content="unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laugh & Draft Resto Bar</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap" rel="stylesheet">


    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header-section">
    <div class="container">
        <div class="logo">
            <a href="original index.html">
                <img src="img/logo.png" alt="">
            </a>
        </div>
        <div class="nav-menu">
            <nav class="mainmenu mobile-menu">
                <ul>
                    <li class="active"><a href="original index.html">Home</a></li>
                    <li><a href="./about-us.html">Schedule</a></li>
                    <li><a href="./schedule.html">Event Registration</a></li>
                    <li><a href="./contact.html">Event Survey</a></li>
                </ul>
            </nav>
            <a href="#" class="primary-btn top-btn">Register</a>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>
<!-- Header End -->

<form action="/login" method="post">
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
    </div>
    <div>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
    </div>
    <button type="submit" class="primary-btn top-btn">Login</button>
</form>

<!-- Footer Section Begin -->
<footer class="footer-section">
    <div class="container">
        <div class="partner-logo owl-carousel">
            <a href="#" class="pl-table">
                <div class="pl-tablecell">
                    <img src="img/partner-logo/logo-1.png" alt="">
                </div>
            </a>
            <a href="#" class="pl-table">
                <div class="pl-tablecell">
                    <img src="img/partner-logo/logo-2.png" alt="">
                </div>
            </a>
            <a href="#" class="pl-table">
                <div class="pl-tablecell">
                    <img src="img/partner-logo/logo-3.png" alt="">
                </div>
            </a>
            <a href="#" class="pl-table">
                <div class="pl-tablecell">
                    <img src="img/partner-logo/logo-4.png" alt="">
                </div>
            </a>
            <a href="#" class="pl-table">
                <div class="pl-tablecell">
                    <img src="img/partner-logo/logo-5.png" alt="">
                </div>
            </a>
            <a href="#" class="pl-table">
                <div class="pl-tablecell">
                    <img src="img/partner-logo/logo-6.png" alt="">
                </div>
            </a>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer-text">
                    <div class="ft-logo">
                        <a href="#" class="footer-logo"><img src="img/footer-logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Comedians</a></li>
                        <li><a href="#">Schedule</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                    <div class="copyright-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                <div class="ft-social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>


<#if errorMessage?exists>
<div style="color:red;">${errorMessage}</div>
</#if>
</body>
        </html>
