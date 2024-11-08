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
                        <li class="active"><a href="/index">Home</a></li>
                        <li><a href="/manage">Event Management</a></li>
                        <li><a href="/analytics">Reporting Analytics</a></li>
                        <li><a href="#">Event Survey</a></li>
                        <li><a href="#">Profile</a></li>
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
                    <li><a href="#">Attend</a></li>
                    <li><a href="/survey">Survey</a></li>
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

    <!-- Hero Section Begin -->
    <section class="hero-section set-bg" data-setbg="img/hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="hero-text">
                        <h2>Change Your Mood<br /> Leave Laughing</h2>
                        <a href="#" class="primary-btn">Buy Ticket</a>
                    </div>
                </div>
                <div class="col-lg-5">
                    <img src="img/hero-right.png" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Counter Section Begin -->
    <section class="counter-section bg-gradient">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="counter-text">
                        <span>Laugh Conference Date</span>
                        <h3>Count Every Second <br />Until the Event</h3>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="cd-timer" id="countdown">
                        <div class="cd-item">
                            <span>40</span>
                            <p>Days</p>
                        </div>
                        <div class="cd-item">
                            <span>18</span>
                            <p>Hours</p>
                        </div>
                        <div class="cd-item">
                            <span>46</span>
                            <p>Minutes</p>
                        </div>
                        <div class="cd-item">
                            <span>32</span>
                            <p>Seconds</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Counter Section End -->

    <!-- Home About Section Begin -->
    <section class="home-about-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="ha-pic">
                        <img src="img/h-about.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="ha-text">
                        <h2>About Conference</h2>
                        <p>When I first jumped into the comedy bar scene, I was on the hunt for the perfect formula that would pack the house,
                            turn me into the comedy king of the city, and have people lining up for laughs every night! Now, after being in
                            the business for a while, I can look back on my early dreams with a chuckle. Turns out, it’s not just about the
                            punchlines but creating a space where everyone leaves with sore cheeks from laughing too hard.</p>
                        <ul>
                            <li><span class="icon_check"></span> Feature Your Shows on Flyers</li>
                            <li><span class="icon_check"></span> Promote on Social Media</li>
                            <li><span class="icon_check"></span> Eye-Catching Poster Design Tips</li>
                            <li><span class="icon_check"></span> Add Your Venue to Local Listings</li>
                        </ul>
                        <a href="#" class="ha-btn">Discover Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Home About Section End -->

    <!-- Schedule Section Begin -->
<section class="events-section spad">
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="section-title">
                <h2>Schedule</h2>
            </div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Title</th>
                    <th>Start Date</th>
                    <th>Location</th>
                    <th>Organizer</th>
                </tr>
                </thead>
                <tbody>
                <#list events as event>
                <tr>
                    <td>${event.title}</td>
                    <td>${event.startDate?string("MMMM dd, yyyy")}</td>
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
    <!-- Schedule Section End -->
    <!-- Contact Section End -->

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
                    <li><a href="#">Event Survey</a></li>
                    <li><a href="#">Profile</a></li>
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