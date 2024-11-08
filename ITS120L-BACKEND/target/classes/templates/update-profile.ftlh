<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laugh & Draft Resto Bar - Edit Profile</title>

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
                    <#if loggedInUser??>
                    <#if loggedInUser.userType == "admin">
                    <li><a href="/index">Home</a></li>
                    <li><a href="/manage">Event Management</a></li>
                    <li><a href="/analytics">Reporting Analytics</a></li>
                    <li><a href="/event-surveys">Event Survey</a></li>
                    <li class="active"><a href="/update-profile">Profile</a></li>
                    <a href="/logout" class="primary-btn top-btn">Logout</a>
                    <#else>
                    <li><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="/event-registration">Event Registration</a></li>
                    <li><a href="/survey">Survey</a></li>
                    <li class="active"><a href="/edit-profile">Profile</a></li>
                    <a href="/logout" class="primary-btn top-btn">Logout</a>
                </#if>
                <#else>
                <li><a href="/index">Home</a></li>
                <li><a href="/schedule">Schedule</a></li>
                <li><a href="/event-registration">Event Registration</a></li>
                <li><a href="/survey">Survey</a></li>
                <a href="/login" class="primary-btn top-btn">Login</a>
                <a href="/register" class="primary-btn top-btn">Register</a>
            </#if>
        </ul>
    </nav>
</div>
</div>
</header>
        <!-- Header End -->

        <!-- Profile Edit Section Begin -->
<div class="container mt-5">
<div class="row justify-content-center">
    <div class="col-lg-6">
        <div class="profile-form">
            <h2>Edit Profile</h2>

            <form action="/update-profile" method="POST" onsubmit="return validatePassword();">
                <input type="hidden" name="id" value="${user.userId}" />
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" class="form-control" value="${loggedInUser.name}" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" value="${loggedInUser.email}" required >
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" value="${loggedInUser.password}" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required>
                </div>
                <input type="hidden" name="userType" value="${loggedInUser.userType}">
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </form>
        </div>
    </div>
</div>
</div>
        <!-- Profile Edit Section End -->

        <!-- Footer Section Start -->
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
                    <li><a href="/index">Home</a></li>
                    <li><a href="/manage">Event Management</a></li>
                    <li><a href="/analytics">Reporting Analytics</a></li>
                    <li><a href="/event-surveys">Event Survey</a></li>
                    <#else>
                    <li><a href="/index">Home</a></li>
                    <li><a href="/schedule">Schedule</a></li>
                    <li><a href="/event-registration">Event Registration</a></li>
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

        <!-- Password Validation Script -->
<script>
function validatePassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

    if (password !== confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}
</script>
        </body>

        </html>