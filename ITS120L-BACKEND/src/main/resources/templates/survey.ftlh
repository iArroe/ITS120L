<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Survey - Laugh & Draft Resto Bar</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap" rel="stylesheet">
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
                    <li><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="/event-registration">Event Registration</a></li>
                    <li class="active"><a href="/survey">Survey</a></li>
                    <li><a href="/update-profile">Profile</a></li>
                    <a href="/logout" class="primary-btn top-btn">Logout</a>
                </ul>
    </nav>
</div>
<div id="mobile-menu-wrap"></div>
</div>
</header>
        <!-- Header End -->

        <!-- Survey Section Begin -->
<section class="survey-section">
<div class="container">
    <h2>Event Feedback Survey</h2>
    <p>We value your feedback! Please provide your comments and thoughts about our recent event.</p>
    <form action="/submitSurvey" method="post">
        <div class="form-group">
            <label for="eventId">Event Name:</label>
            <select class="form-control" id="eventId" name="eventId" required>
                <option value="" disabled selected>Select an event</option>
                <#list events as event>
                <option value="${event.eventId}">${event.title}</option>
                </#list>
                </select>
        </div>
        <div class="form-group">
            <label for="rating">Rating:</label>
            <select class="form-control" id="rating" name="rating">
                <option value="1">1 - Poor</option>
                <option value="2">2 - Fair</option>
                <option value="3">3 - Good</option>
                <option value="4">4 - Very Good</option>
                <option value="5">5 - Excellent</option>
            </select>
        </div>
        <div class="form-group">
            <label for="comment">Your Comments:</label>
            <textarea class="form-control" id="comment" name="comment" rows="4" placeholder="Share your experience, suggestions, or any other thoughts about the event."></textarea>
        </div>
        <button type="submit" class="primary-btn">Submit Feedback</button>
    </form>
</div>
</section>
        <!-- Survey Section End -->

        <!-- Footer Section Begin -->
<footer class="footer-section">
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="footer-text">
                <div class="ft-logo">
                    <a href="#" class="footer-logo"><img src="img/footer-logo.png" alt=""></a>
                </div>
                <ul>

                    <li><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="/event-registration">Event Registration</a></li>
                    <li><a href="#">Attend</a></li>
                    <li><a href="/survey">Survey</a></li>
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