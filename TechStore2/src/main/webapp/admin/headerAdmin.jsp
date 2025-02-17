<%-- 
    Document   : headerAdmin
    Created on : Mar 19, 2022, 3:39:46 PM
    Author     : nora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Admin Store</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <script type="text/javascript" 
            src=
            "https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js">
    </script>
    <script src="jquery-3.2.1.js"></script>
<% 
        String nameAdmin = (String) session.getAttribute("name");

%>

    <body>
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Sidebar Start -->
            <div class="sidebar pe-4 pb-3">
                <nav class="navbar bg-light navbar-light">
                    <a href="index.html" class="navbar-brand mx-4 mb-3">
                        <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>DASHBOARD</h3>
                    </a>
                    <div class="d-flex align-items-center ms-4 mb-4">
                        <div class="position-relative">
                            <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                        </div>
                        <div class="ms-3">
                            <h6 class="mb-0"><%=nameAdmin%></h6>
                            <span>Admin</span>
                        </div>
                    </div>
                    <div class="navbar-nav w-100">
                        <!--                    <div class="nav-item dropdown">
                                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Elements</a>
                                                <div class="dropdown-menu bg-transparent border-0">
                                                    <a href="button.html" class="dropdown-item">Buttons</a>
                                                    <a href="typography.html" class="dropdown-item">Typography</a>
                                                    <a href="element.html" class="dropdown-item">Other Elements</a>
                                                </div>
                                            </div>-->
                        <a href="displayProducts.jsp" class="nav-item nav-link"><i class="fa fa-th me-2"></i>All Products</a>
                        <a href="addProduct.jsp" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Add product</a>

                        <a href="dispalyUsers.jsp" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>All users</a>
                        <a href="#" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>ADD user</a>

                        <a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Statistics</a>
                        <!--<a href="#" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Charts</a>-->
                        <!--                    <div class="nav-item dropdown">
                                                <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                                                <div class="dropdown-menu bg-transparent border-0">
                                                    <a href="signin.html" class="dropdown-item">Sign In</a>
                                                    <a href="signup.html" class="dropdown-item">Sign Up</a>
                                                    <a href="404.html" class="dropdown-item">404 Error</a>
                                                    <a href="blank.html" class="dropdown-item active">Blank Page</a>
                                                </div>
                                            </div>-->
                    </div>
                </nav>
            </div>
            <!-- Sidebar End -->


            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                    <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                        <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                    </a>
                    <a href="#" class="sidebar-toggler flex-shrink-0">
                        <i class="fa fa-bars"></i>
                    </a>
                    <div class="navbar-nav align-items-center ms-auto">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                <span class="d-none d-lg-inline-flex"><%=nameAdmin%></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                <a href="/TechStore2/LogoutAdmin" class="dropdown-item">Log Out</a>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- Navbar End -->

