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
                        <li><a href="#">Event Management</a></li>
                        <li><a href="#">Reporting Analytics</a></li>
                        <li><a href="#">Event Survey</a></li>
                        <li><a href="#">Profile</a></li>
                        <a href="/logout" class="primary-btn top-btn">Logout</a>
                        <#else>
                        <li class="active"><a href="/index">Home</a></li>
                        <li><a href="/schedule">Schedule</a></li>
                        <li><a href="#">Event Registration</a></li>
                        <li><a href="#">Survey</a></li>
                        <a href="/logout" class="primary-btn top-btn">Logout</a>
                    </#if>
                    <#else>
                    <li><a href="/index">Home</a></li>
                    <li class="active"><a href="/schedule">Schedule</a></li>
                    <li><a href="#">Event Registration</a></li>
                    <li><a href="#">Survey</a></li>
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



    <!-- Body Here -->
        <!-- Events Table Begin -->
<section class="events-section spad">
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="section-title">
                <h2>Existing Events</h2>
                <p>List of all scheduled events</p>
            </div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Location</th>
                    <th>Organizer</th>
                </tr>
                </thead>
                <tbody>
                <#list events as event>
                <tr>
                    <td>${event.title}</td>
                    <td>${event.description}</td>
                    <td>${event.startDate?string("yyyy-MM-dd")}</td>
                    <td>${event.endDate?string("yyyy-MM-dd")}</td>
                    <td>${event.location}</td>
                    <td>${event.user.name}</td>
                </tr>
                </#list>
            </tbody>
        </table>
    </div>
</div>
</div>
        </section>

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
                    <#if loggedInUser?? && loggedInUser.userType == "admin">
                    <li><a href="#">Event Management</a></li>
                    <li><a href="#">Report Analytics</a></li>
                    <li><a href="#">Event Survey</a></li>
                    <li><a href="#">Profile</a></li>
                    <#else>
                    <li><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="#">Event Registration</a></li>
                    <li><a href="#">Survey</a></li>
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