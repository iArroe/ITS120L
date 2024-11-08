<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laugh & Draft Resto Bar</title>
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
                    <li>
                        <a href="/index">Home</a>
                    </li>
                    <li>
                        <a href="/schedule">Schedule</a>
                    </li>
                    <li>
                        <a href="/event-registration">Event Registration</a>
                    </li>
                    <li>
                        <a href="#">Attend</a>
                    </li>
                    <li>
                        <a href="#">Event Survey</a>
                    </li>
                </ul>
            </nav>
            <a href="/register" class="primary-btn top-btn">Register</a>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>
<!-- Header End -->
<!-- Body Here -->
<div class="ai-sentiment-container">
    <!-- AI Sentiment Form -->
    <form action="/ai-sentiment" method="post" class="ai-sentiment-form">
        <label for="prompt">Enter your prompt:</label>
        <br>
        <textarea id="prompt" name="prompt" rows="4" cols="50" required>Perform sentiment analysis by creating a numbered list of things to improve and positive things:<#list feedbacks as feedback>${feedback.comment?replace("\r\n", "\n")?replace("\n", "\n")}. </#list></textarea>
        <br><br>
        <button type="submit">Generate Text</button>
    <div class="ai-sentiment-result">
        <h2>Generated Text:</h2>
        <#if result??>
        <p>${result}</p>
        <#else>
        <p>No result generated yet.</p>
    </#if>
</div>
</div>


    </form>

</div>
<!-- Footer Section Start -->
<footer class="footer-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="footer-text">
                    <div class="ft-logo">
                        <a href="#" class="footer-logo">
                            <img src="img/footer-logo.png" alt="">
                        </a>
                    </div>
                    <ul>
                        <li>
                            <a href="#">Event Management</a>
                        </li>
                        <li>
                            <a href="#">Report Analytics</a>
                        </li>
                        <li>
                            <a href="#">Event Survey</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="/index">Home</a>
                        </li>
                        <li>
                            <a href="/schedule">Schedule</a>
                        </li>
                        <li>
                            <a href="#">Event Registration</a>
                        </li>
                        <li>
                            <a href="#">Survey</a>
                        </li>
                    </ul>
                    <div class="ft-social">
                        <a href="#">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-linkedin"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-instagram"></i>
                        </a>
                        <a href="#">
                            <i class="fa fa-youtube-play"></i>
                        </a>
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