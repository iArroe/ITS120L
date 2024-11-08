<!DOCTYPE html>
<html lang="zxx">

<head>
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
                <a href="/index">
                    <img src="img/logo.png" alt="">
                </a>
            </div>
            <div class="nav-menu">
                <nav class="mainmenu mobile-menu">
                    <ul>
                        <#if loggedInUser??>
                        <#if loggedInUser.userType == "admin">
                        <li><a href="/index">Home</a></li>
                        <li><a href="/manage">Event Management</a></li>
                        <li><a href="/analytics">Report Analytics</a></li>
                        <li class="active"><a href="/event-surveys">Event Survey</a></li>
                        <li><a href="/update-profile">Profile</a></li>
                        <a href="/logout" class="primary-btn top-btn">Logout</a>
                        <#else>
                        <li class="active"><a href="/index">Home</a></li>
                        <li><a href="/schedule">Schedule</a></li>
                        <li><a href="/event-registration">Event Registration</a></li>
                        <li><a href="#">Attend</a></li>
                        <li><a href="/survey">Survey</a></li>
                        <a href="/logout" class="primary-btn top-btn">Logout</a>
                    </#if>
                    <#else>
                    <li class="active"><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="/event-registration">Event Registration</a></li>
                    <li><a href="/survey">Survey</a></li>
                    <li><a href="/update-profile"></a></li>
                    <a href="/login" class="primary-btn top-btn">Login</a>
                    <a href="/register" class="primary-btn top-btn">Register</a>
                </#if>
            </ul>
        </nav>
    </div>
    <div id="mobile-menu-wrap"></div>
</div>
</header>

        <!-- Header End -->
<#list events as event>
<div class="event-container">
<h2 class="event-title">Feedbacks for Event: ${event.title}</h2>
<table class="feedback-table">
    <thead>
    <tr>
        <th>User</th>
        <th>Comment</th>
    </tr>
    </thead>
    <tbody>
    <#list feedbacks as feedback>
    <#if feedback.event.eventId == event.eventId>
    <tr>
        <td>${feedback.user.name}</td>
        <td>${feedback.comment}</td>
    </tr>
    </#if>
    </#list>
        </tbody>
        </table>
        </div>
        </#list>
    <!-- Footer Section Begin -->
<footer class="footer-section">
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="footer-text">
                <div class="ft-logo">
                    <a href="/index" class="footer-logo"><img src="img/footer-logo.png" alt=""></a>
                </div>
                <ul>
                    <#if loggedInUser?? && loggedInUser.userType == "admin">
                    <li><a href="/index">Home</a></li>
                    <li><a href="/manage">Event Management</a></li>
                    <li><a href="/analytics">Report Analytics</a></li>
                    <li><a href="/event-surveys">Event Survey</a></li>
                    <li><a href="/update-profile">Profile</a></li>
                    <#else>
                    <li><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="/event-registration">Event Registration</a></li>
                    <li><a href="#">Attend</a></li>
                    <li><a href="/survey">Survey</a></li>
                </#if>
            </ul>
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
</body>

</html>