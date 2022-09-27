<%-- 
    Document   : widgets
    Created on : Sep 27, 2022, 12:38:47 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <%@include file="headCSS.jsp" %>

    <body>
        <div class="wrapper">
            <%@include file="headtop.jsp" %>

            <div class="page-wrap">
                <%@include file="sidebar.jsp" %>
                <div class="main-content">
                    <div class="container-fluid">
                        <div class="page-header">
                            <div class="row align-items-end">
                                <div class="col-lg-8">
                                    <div class="page-header-title">
                                        <i class="ik ik-layers bg-blue"></i>
                                        <div class="d-inline">
                                            <h5>Widgets Basic</h5>
                                            <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <nav class="breadcrumb-container" aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="../index.jsp"><i class="ik ik-home"></i></a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="#">Widgets</a>
                                            </li>

                                            <li class="breadcrumb-item active" aria-current="page">Widgets Basic</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-primary">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Works</h6>
                                                <h2>543</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-box"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-success">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Sales</h6>
                                                <h2>3510</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-shopping-cart"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-warning">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Earnings</h6>
                                                <h2>$43,567.53</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-inbox"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-danger">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>New Users</h6>
                                                <h2>11</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-users"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Server</h6>
                                                <h2>62%</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-server"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Traffic</h6>
                                                <h2>45%</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-trending-up"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Email</h6>
                                                <h2>32</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-mail"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Domians</h6>
                                                <h2>11</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-zap"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Bookmarks</h6>
                                                <h2>1,410</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-award"></i>
                                            </div>
                                        </div>
                                        <small class="text-small mt-10 d-block">6% higher than last month</small>
                                    </div>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100" style="width: 62%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Likes</h6>
                                                <h2>41,410</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-thumbs-up"></i>
                                            </div>
                                        </div>
                                        <small class="text-small mt-10 d-block">61% higher than last month</small>
                                    </div>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Events</h6>
                                                <h2>410</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-calendar"></i>
                                            </div>
                                        </div>
                                        <small class="text-small mt-10 d-block">Total Events</small>
                                    </div>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="31" aria-valuemin="0" aria-valuemax="100" style="width: 31%;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Comments</h6>
                                                <h2>41,410</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-message-square"></i>
                                            </div>
                                        </div>
                                        <small class="text-small mt-10 d-block">Total Comments</small>
                                    </div>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-group mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="state">
                                            <h3 class="text-success">234</h3>
                                            <p class="card-subtitle text-muted fw-500">New Orders</p>
                                        </div>
                                        <div class="icon"><i class="ik ik-shopping-cart"></i></div>
                                    </div>
                                    <div class="progress mt-3 mb-1" style="height: 6px;">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 83%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                    <div class="text-muted f12">
                                        <span>Progress</span>
                                        <span class="float-right">83%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="state">
                                            <h3 class="text-primary">3423</h3>
                                            <p class="card-subtitle text-muted fw-500">Pending Products</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ik ik-briefcase"></i>
                                        </div>
                                    </div>
                                    <div class="progress mt-3 mb-1" style="height: 6px;">
                                        <div class="progress-bar bg-primary" role="progressbar" style="width: 63%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                    <div class="text-muted f12">
                                        <span>Progress</span>
                                        <span class="float-right">63%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="state">
                                            <h3 class="text-danger">$ 123423</h3>
                                            <p class="card-subtitle text-muted fw-500">Online Reveneue</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ik ik-codepen"></i>
                                        </div>
                                    </div>
                                    <div class="progress mt-3 mb-1" style="height: 6px;">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 77%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                    <div class="text-muted f12">
                                        <span>Progress</span>
                                        <span class="float-right">77%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="state">
                                            <h3 class="text-info">$ 355323</h3>
                                            <p class="card-subtitle text-muted fw-500">Total Profits</p>
                                        </div>
                                        <div class="icon">
                                            <i class="ik ik-trending-up"></i>
                                        </div>
                                    </div>
                                    <div class="progress mt-3 mb-1" style="height: 6px;">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 56%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                    <div class="text-muted f12">
                                        <span>Progress</span>
                                        <span class="float-right">56%</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col-lg-2 col-md-4 col-6">
                                <div class="widget social-widget">
                                    <div class="widget-body">
                                        <div class="icon"><i class="fab fa-facebook text-facebook"></i></div>
                                        <div class="content">
                                            <div class="text">Like</div>
                                            <div class="number">123</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-6">
                                <div class="widget social-widget">
                                    <div class="widget-body">
                                        <div class="icon"><i class="fab fa-instagram text-instagram"></i></div>
                                        <div class="content">
                                            <div class="text">Followers</div>
                                            <div class="number">231</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-6">
                                <div class="widget social-widget">
                                    <div class="widget-body">
                                        <div class="icon"><i class="fab fa-twitter text-twitter"></i></div>
                                        <div class="content">
                                            <div class="text">Followers</div>
                                            <div class="number">31</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-6">
                                <div class="widget social-widget">
                                    <div class="widget-body">
                                        <div class="icon"><i class="fab fa-google text-google"></i></div>
                                        <div class="content">
                                            <div class="text">Like</div>
                                            <div class="number">254</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-6">
                                <div class="widget social-widget">
                                    <div class="widget-body">
                                        <div class="icon"><i class="fab fa-linkedin text-linkedin"></i></div>
                                        <div class="content">
                                            <div class="text">Followers</div>
                                            <div class="number">2510</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-6">
                                <div class="widget social-widget">
                                    <div class="widget-body">
                                        <div class="icon"><i class="fab fa-behance text-behance"></i></div>
                                        <div class="content">
                                            <div class="text">Project</div>
                                            <div class="number">121</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-header">
                                        <h3 class="widget-title">Expandable</h3>
                                        <div class="widget-tools pull-right">
                                            <button type="button" class="btn btn-widget-tool minimize-widget ik ik-plus"></button>
                                        </div>
                                    </div>
                                    <div class="widget-body">
                                        The body of the widget
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-header">
                                        <h3 class="widget-title">Removable</h3>
                                        <div class="widget-tools pull-right">
                                            <button type="button" class="btn btn-widget-tool remove-widget ik ik-x"></button>
                                        </div>
                                    </div>
                                    <div class="widget-body">
                                        The body of the widget
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="overlay">
                                            <i class="ik ik-refresh-ccw loading"></i>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Server</h6>
                                                <h2>62%</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-server"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget">
                                    <div class="widget-body">
                                        <div class="overlay">
                                            <i class="ik ik-refresh-ccw loading"></i>
                                            <span class="overlay-text">Async Fetching...</span>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Traffic</h6>
                                                <h2>45%</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-trending-up"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-purple">
                                    <div class="widget-header">
                                        <h3 class="widget-title">Expandable</h3>
                                        <div class="widget-tools pull-right">
                                            <button type="button" class="btn btn-widget-tool minimize-widget ik ik-plus"></button>
                                        </div>
                                    </div>
                                    <div class="widget-body">
                                        The body of the widget
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-teal">
                                    <div class="widget-header">
                                        <h3 class="widget-title">Removable</h3>
                                        <div class="widget-tools pull-right">
                                            <button type="button" class="btn btn-widget-tool remove-widget ik ik-x"></button>
                                        </div>
                                    </div>
                                    <div class="widget-body">
                                        The body of the widget
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-lime">
                                    <div class="widget-body">
                                        <div class="overlay">
                                            <i class="ik ik-refresh-ccw loading"></i>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Server</h6>
                                                <h2>62%</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-server"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-12">
                                <div class="widget bg-navy">
                                    <div class="widget-body">
                                        <div class="overlay">
                                            <i class="ik ik-refresh-ccw loading"></i>
                                            <span class="overlay-text">Async Fetching...</span>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="state">
                                                <h6>Traffic</h6>
                                                <h2>45%</h2>
                                            </div>
                                            <div class="icon">
                                                <i class="ik ik-trending-up"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Feeds</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body feeds-widget">
                                        <div class="feed-item">
                                            <a href="#">
                                                <div class="feeds-left"><i class="ik ik-thumbs-up text-primary"></i></div>
                                                <div class="feeds-body">
                                                    <h4 class="title text-primary">7 New Feedback <small class="float-right text-muted">Today</small></h4>
                                                    <small>It will give a smart finishing to your site</small>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="feed-item">
                                            <a href="#">
                                                <div class="feeds-left"><i class="ik ik-user text-success"></i></div>
                                                <div class="feeds-body">
                                                    <h4 class="title text-success">New User <small class="float-right text-muted">10:45</small></h4>
                                                    <small>I feel great! Thanks team</small>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="feed-item">
                                            <a href="#">
                                                <div class="feeds-left"><i class="ik ik-alert-circle text-warning"></i></div>
                                                <div class="feeds-body">
                                                    <h4 class="title text-warning">Server Warning <small class="float-right text-muted">10:50</small></h4>
                                                    <small>Your connection is not private</small>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="feed-item">
                                            <a href="#">
                                                <div class="feeds-left"><i class="ik ik-check-circle text-danger"></i></div>
                                                <div class="feeds-body">
                                                    <h4 class="title text-danger">Issue Fixed <small class="float-right text-muted">11:05</small></h4>
                                                    <small>WE have fix all Design bug with Responsive</small>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="feed-item">
                                            <a href="#">
                                                <div class="feeds-left"><i class="ik ik-shopping-cart text-purple"></i></div>
                                                <div class="feeds-body">
                                                    <h4 class="title text-purple">7 New Orders <small class="float-right text-muted">11:35</small></h4>
                                                    <small>You received a new oder from Tina.</small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Timeline</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body timeline">
                                        <div class="header bg-theme" style="background-image: url('../img/placeholder/placeimg_400_200_nature.jpg')">
                                            <div class="color-overlay d-flex align-items-center">
                                                <div class="day-number">8</div>
                                                <div class="date-right">
                                                    <div class="day-name">Monday</div>
                                                    <div class="month">February 2018</div>
                                                </div>
                                            </div>                                
                                        </div>
                                        <ul>
                                            <li>
                                                <div class="bullet bg-pink"></div>
                                                <div class="time">11am</div>
                                                <div class="desc">
                                                    <h3>Attendance</h3>
                                                    <h4>Computer Class</h4>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="bullet bg-green"></div>
                                                <div class="time">12pm</div>
                                                <div class="desc">
                                                    <h3>Design Team</h3>
                                                    <h4>Hangouts</h4>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="bullet bg-orange"></div>
                                                <div class="time">2pm</div>
                                                <div class="desc">
                                                    <h3>Finish</h3>
                                                    <h4>Go to Home</h4>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-md-12">
                                <div class="card" style="min-height: 412px;">
                                    <div class="card-header">
                                        <h3>Todos</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <ul class="task-list">
                                            <li class="list">
                                                <span></span>
                                                <div class="task-details">
                                                    <p class="date">
                                                        <small class="text-primary">Meeting</small> - Upcoming in 5 days
                                                    </p>
                                                    <p>Meeting with Sara in the Caffee Caldo for Brunch</p>
                                                    <small>Scheduled for 16th Mar, 2017</small>
                                                </div>
                                            </li>
                                            <li class="list">
                                                <span></span>
                                                <div class="task-details">
                                                    <p class="date">
                                                        <small class="text-primary">Meeting</small> - Delay 7 days
                                                    </p>
                                                    <p>Technical management meeting</p>
                                                    <small>Completed 15 days ago</small>
                                                </div>
                                            </li>
                                            <li class="list completed">
                                                <span></span>
                                                <div class="task-details">
                                                    <p class="date">
                                                        <small class="text-danger">Transfer</small> - Completed
                                                    </p>
                                                    <p>Transfer all domain names as soon as possible!</p>
                                                    <small>Completed 2 days ago</small>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Recent Chat</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body chat-box scrollable" style="height:300px;">
                                        <ul class="chat-list">
                                            <li class="chat-item">
                                                <div class="chat-img"><img src="../img/users/1.jpg" alt="user"></div>
                                                <div class="chat-content">
                                                    <h6 class="font-medium">James Anderson</h6>
                                                    <div class="box bg-light-info">Lorem Ipsum is simply dummy text of the printing &amp; type setting industry.</div>
                                                </div>
                                                <div class="chat-time">10:56 am</div>
                                            </li>
                                            <li class="chat-item">
                                                <div class="chat-img"><img src="../img/users/2.jpg" alt="user"></div>
                                                <div class="chat-content">
                                                    <h6 class="font-medium">Bianca Doe</h6>
                                                    <div class="box bg-light-info">It’s Great opportunity to work.</div>
                                                </div>
                                                <div class="chat-time">10:57 am</div>
                                            </li>
                                            <li class="odd chat-item">
                                                <div class="chat-content">
                                                    <div class="box bg-light-inverse">I would love to join the team.</div>
                                                    <br>
                                                </div>
                                            </li>
                                            <li class="odd chat-item">
                                                <div class="chat-content">
                                                    <div class="box bg-light-inverse">Whats budget of the new project.</div>
                                                    <br>
                                                </div>
                                                <div class="chat-time">10:59 am</div>
                                            </li>
                                            <li class="chat-item">
                                                <div class="chat-img"><img src="../img/users/3.jpg" alt="user"></div>
                                                <div class="chat-content">
                                                    <h6 class="font-medium">Angelina Rhodes</h6>
                                                    <div class="box bg-light-info">Well we have good budget for the project</div>
                                                </div>
                                                <div class="chat-time">11:00 am</div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-footer chat-footer">
                                        <div class="input-wrap">
                                            <input type="text" placeholder="Type and enter" class="form-control">
                                        </div>
                                        <button type="button" class="btn btn-icon btn-theme"><i class="fa fa-paper-plane"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center">
                                            <div class="col-lg-8 col-md-12">
                                                <h3 class="card-title">Visitors By Countries</h3>
                                                <div id="visitfromworld" style="width:100%; height:350px"></div>
                                            </div>
                                            <div class="col-lg-4 col-md-12">
                                                <div class="row mb-15">
                                                    <div class="col-9">India</div>
                                                    <div class="col-3 text-right">28%</div>
                                                    <div class="col-12">
                                                        <div class="progress progress-sm mt-5">
                                                            <div class="progress-bar bg-green" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mb-15">
                                                    <div class="col-9"> UK</div>
                                                    <div class="col-3 text-right">21%</div>
                                                    <div class="col-12">
                                                        <div class="progress progress-sm mt-5">
                                                            <div class="progress-bar bg-aqua" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mb-15">
                                                    <div class="col-9"> USA</div>
                                                    <div class="col-3 text-right">18%</div>
                                                    <div class="col-12">
                                                        <div class="progress progress-sm mt-5">
                                                            <div class="progress-bar bg-purple" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-9">China</div>
                                                    <div class="col-3 text-right">12%</div>
                                                    <div class="col-12">
                                                        <div class="progress progress-sm mt-5">
                                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body text-center">
                                        <div class="profile-pic mb-20">
                                            <img src="../img/user.jpg" width="150" class="rounded-circle" alt="user">
                                            <h4 class="mt-20 mb-0">John Doe</h4>
                                            <a href="#" >johndoe@admin.com</a>
                                        </div>
                                        <div class="badge badge-pill badge-dark">Dashboard</div>
                                        <div class="badge badge-pill badge-dark">UI</div>
                                        <div class="badge badge-pill badge-dark">UX</div>
                                        <div class="badge badge-pill badge-info" data-toggle="tooltip" data-placement="top" title="3 more">+3</div>
                                    </div>
                                    <div class="p-4 border-top mt-15">
                                        <div class="row text-center">
                                            <div class="col-6 border-right">
                                                <a href="#" class="link d-flex align-items-center justify-content-center"><i class="ik ik-message-square f-20 mr-5"></i>Message</a>
                                            </div>
                                            <div class="col-6">
                                                <a href="#" class="link d-flex align-items-center justify-content-center"><i class="ik ik-box f-20 mr-5"></i>Portfolio</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div id="datepickerwidget"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <h4 class="card-title">Weather Report</h4>
                                            <select class="form-control w-25 ml-auto">
                                                <option selected="">Today</option>
                                                <option value="1">Weekly</option>
                                            </select>
                                        </div>
                                        <div class="d-flex align-items-center flex-row mt-10">
                                            <div class="p-2 f-50 text-info"><i class="wi wi-day-showers"></i> <span>73<sup>°</sup></span></div>
                                            <div class="p-2">
                                            <h3 class="mb-0">Saturday</h3><small>Banglore, India</small></div>
                                        </div>
                                        <table class="table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td>Wind</td>
                                                    <td class="font-medium">ESE 17 mph</td>
                                                </tr>
                                                <tr>
                                                    <td>Humidity</td>
                                                    <td class="font-medium">83%</td>
                                                </tr>
                                                <tr>
                                                    <td>Pressure</td>
                                                    <td class="font-medium">28.56 in</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <hr>
                                        <ul class="list-unstyled row text-center city-weather-days mb-0">
                                            <li class="col"><i class="wi wi-day-sunny mr-5"></i><span>09:30</span><h3>70<sup>°</sup></h3></li>
                                            <li class="col"><i class="wi wi-day-cloudy mr-5"></i><span>11:30</span><h3>72<sup>°</sup></h3></li>
                                            <li class="col"><i class="wi wi-day-hail mr-5"></i><span>13:30</span><h3>75<sup>°</sup></h3></li>
                                            <li class="col"><i class="wi wi-day-sprinkle mr-5"></i><span>15:30</span><h3>76<sup>°</sup></h3></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <aside class="right-sidebar">
                    <div class="sidebar-chat" data-plugin="chat-sidebar">
                        <div class="sidebar-chat-info">
                            <h6>Chat List</h6>
                            <form class="mr-t-10">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search for friends ..."> 
                                    <i class="ik ik-search"></i>
                                </div>
                            </form>
                        </div>
                        <div class="chat-list">
                            <div class="list-group row">
                                <a href="javascript:void(0)" class="list-group-item" data-chat-user="Gene Newman">
                                    <figure class="user--online">
                                        <img src="../img/users/1.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Gene Newman</span>  <span class="username">@gene_newman</span> </span>
                                </a>
                                <a href="javascript:void(0)" class="list-group-item" data-chat-user="Billy Black">
                                    <figure class="user--online">
                                        <img src="../img/users/2.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Billy Black</span>  <span class="username">@billyblack</span> </span>
                                </a>
                                <a href="javascript:void(0)" class="list-group-item" data-chat-user="Herbert Diaz">
                                    <figure class="user--online">
                                        <img src="../img/users/3.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Herbert Diaz</span>  <span class="username">@herbert</span> </span>
                                </a>
                                <a href="javascript:void(0)" class="list-group-item" data-chat-user="Sylvia Harvey">
                                    <figure class="user--busy">
                                        <img src="../img/users/4.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Sylvia Harvey</span>  <span class="username">@sylvia</span> </span>
                                </a>
                                <a href="javascript:void(0)" class="list-group-item active" data-chat-user="Marsha Hoffman">
                                    <figure class="user--busy">
                                        <img src="../img/users/5.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Marsha Hoffman</span>  <span class="username">@m_hoffman</span> </span>
                                </a>
                                <a href="javascript:void(0)" class="list-group-item" data-chat-user="Mason Grant">
                                    <figure class="user--offline">
                                        <img src="../img/users/1.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Mason Grant</span>  <span class="username">@masongrant</span> </span>
                                </a>
                                <a href="javascript:void(0)" class="list-group-item" data-chat-user="Shelly Sullivan">
                                    <figure class="user--offline">
                                        <img src="../img/users/2.jpg" class="rounded-circle" alt="">
                                    </figure><span><span class="name">Shelly Sullivan</span>  <span class="username">@shelly</span></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </aside>

                <div class="chat-panel" hidden>
                    <div class="card">
                        <div class="card-header d-flex justify-content-between">
                            <a href="javascript:void(0);"><i class="ik ik-message-square text-success"></i></a>  
                            <span class="user-name">John Doe</span> 
                            <button type="button" class="close" aria-label="Close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="card-body">
                            <div class="widget-chat-activity flex-1">
                                <div class="messages">
                                    <div class="message media reply">
                                        <figure class="user--online">
                                            <a href="#">
                                                <img src="../img/users/3.jpg" class="rounded-circle" alt="">
                                            </a>
                                        </figure>
                                        <div class="message-body media-body">
                                            <p>Epic Cheeseburgers come in all kind of styles.</p>
                                        </div>
                                    </div>
                                    <div class="message media">
                                        <figure class="user--online">
                                            <a href="#">
                                                <img src="../img/users/1.jpg" class="rounded-circle" alt="">
                                            </a>
                                        </figure>
                                        <div class="message-body media-body">
                                            <p>Cheeseburgers make your knees weak.</p>
                                        </div>
                                    </div>
                                    <div class="message media reply">
                                        <figure class="user--offline">
                                            <a href="#">
                                                <img src="../img/users/5.jpg" class="rounded-circle" alt="">
                                            </a>
                                        </figure>
                                        <div class="message-body media-body">
                                            <p>Cheeseburgers will never let you down.</p>
                                            <p>They'll also never run around or desert you.</p>
                                        </div>
                                    </div>
                                    <div class="message media">
                                        <figure class="user--online">
                                            <a href="#">
                                                <img src="../img/users/1.jpg" class="rounded-circle" alt="">
                                            </a>
                                        </figure>
                                        <div class="message-body media-body">
                                            <p>A great cheeseburger is a gastronomical event.</p>
                                        </div>
                                    </div>
                                    <div class="message media reply">
                                        <figure class="user--busy">
                                            <a href="#">
                                                <img src="../img/users/5.jpg" class="rounded-circle" alt="">
                                            </a>
                                        </figure>
                                        <div class="message-body media-body">
                                            <p>There's a cheesy incarnation waiting for you no matter what you palete preferences are.</p>
                                        </div>
                                    </div>
                                    <div class="message media">
                                        <figure class="user--online">
                                            <a href="#">
                                                <img src="../img/users/1.jpg" class="rounded-circle" alt="">
                                            </a>
                                        </figure>
                                        <div class="message-body media-body">
                                            <p>If you are a vegan, we are sorry for you loss.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <form action="javascript:void(0)" class="card-footer" method="post">
                            <div class="d-flex justify-content-end">
                                <textarea class="border-0 flex-1" rows="1" placeholder="Type your message here"></textarea>
                                <button class="btn btn-icon" type="submit"><i class="ik ik-arrow-right text-success"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <footer class="footer">
                    <div class="w-100 clearfix">
                        <span class="text-center text-sm-left d-md-inline-block">Copyright © 2018 ThemeKit v2.0. All Rights Reserved.</span>
                        <span class="float-none float-sm-right mt-1 mt-sm-0 text-center">Crafted with <i class="fa fa-heart text-danger"></i> by <a href="http://lavalite.org/" class="text-dark" target="_blank">Lavalite</a></span>
                    </div>
                </footer>
            </div>
        </div>
        
        
        

        <div class="modal fade apps-modal" id="appsModal" tabindex="-1" role="dialog" aria-labelledby="appsModalLabel" aria-hidden="true" data-backdrop="false">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="ik ik-x-circle"></i></button>
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="quick-search">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 ml-auto mr-auto">
                                    <div class="input-wrap">
                                        <input type="text" id="quick-search" class="form-control" placeholder="Search..." />
                                        <i class="ik ik-search"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-body d-flex align-items-center">
                        <div class="container">
                            <div class="apps-wrap">
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-bar-chart-2"></i><span>Dashboard</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-mail"></i><span>Message</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-users"></i><span>Accounts</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-shopping-cart"></i><span>Sales</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-briefcase"></i><span>Purchase</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-server"></i><span>Menus</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-clipboard"></i><span>Pages</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-message-square"></i><span>Chats</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-map-pin"></i><span>Contacts</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-box"></i><span>Blocks</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-calendar"></i><span>Events</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-bell"></i><span>Notifications</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-pie-chart"></i><span>Reports</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-layers"></i><span>Tasks</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-edit"></i><span>Blogs</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-settings"></i><span>Settings</span></a>
                                </div>
                                <div class="app-item">
                                    <a href="#"><i class="ik ik-more-horizontal"></i><span>More</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

    </body>
</html>
