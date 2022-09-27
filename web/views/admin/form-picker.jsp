<%-- 
    Document   : form-picker
    Created on : Sep 27, 2022, 12:37:34 AM
    Author     : Lenovo
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
                                        <i class="ik ik-terminal bg-blue"></i>
                                        <div class="d-inline">
                                            <h5>Form Picker</h5>
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
                                            <li class="breadcrumb-item"><a href="#">Forms</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Form Picker</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Default Date-Picker</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Date</h4>
                                                <p>Add type<code>&lt;input type="date"&gt;</code></p>
                                                <input class="form-control" type="date" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Month</h4>
                                                <p>Add type<code>&lt;input type="month"&gt;</code></p>
                                                <input class="form-control" type="month" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Week</h4>
                                                <p>Add type<code>&lt;input type="week"&gt;</code></p>
                                                <input class="form-control" type="week" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Date-time-local</h4>
                                                <p>Add type<code>&lt;input type="datetime-local"&gt;</code></p>
                                                <input class="form-control" type="datetime-local" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4">
                                                <h4 class="sub-title">Time</h4>
                                                <p>Add type<code>&lt;input type="time"&gt;</code></p>
                                                <input class="form-control" type="time" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Date-Dropper</h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Default</h4>
                                                <p>Add <code>id="#dropper-default"</code></p>
                                                <input id="dropper-default" class="form-control" type="text" placeholder="Select your date" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">With Animation</h4>
                                                <p>Add <code>id="#dropper-animation"</code></p>
                                                <input id="dropper-animation" class="form-control" type="text" placeholder="Select your animation" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Date format</h4>
                                                <p>Add <code>id="#dropper-format"</code></p>
                                                <input id="dropper-format" class="form-control" type="text" placeholder="Select your format" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Language Support</h4>
                                                <p>Add <code>id="#dropper-lang"</code></p>
                                                <input id="dropper-lang" class="form-control" type="text" placeholder="Language Support" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Lock Support</h4>
                                                <p>Add <code>id="#dropper-lock"</code></p>
                                                <input id="dropper-lock" class="form-control" type="text" placeholder="Select your date" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Max Year</h4>
                                                <p>Add <code>id="#dropper-max-year"</code></p>
                                                <input id="dropper-max-year" class="form-control" type="text" placeholder="Max Year 2020" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Min Year</h4>
                                                <p>Add <code>id="#dropper-min-year"</code></p>
                                                <input id="dropper-min-year" class="form-control" type="text" placeholder="Min Year 1990" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Year-range</h4>
                                                <p>Add <code>id="#year-range"</code></p>
                                                <input id="year-range" class="form-control" type="text" placeholder="Select your date" />
                                            </div>
                                            <div class="col-sm-12 col-xl-4">
                                                <h4 class="sub-title">Custom Width</h4>
                                                <p>Add <code>id="#dropper-width"</code></p>
                                                <input id="dropper-width" class="form-control" type="text" placeholder="Select your date" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-header"><h3>Inline Datetimepicker</h3></div>
                                    <div class="card-body">
                                        <div id="inlinedatetimepicker"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card" style="min-height: 200px;">
                                    <div class="card-header"><h3>Dropdown Datepicker</h3></div>
                                    <div class="card-body">
                                        <form action="">
                                            <div class="form-group">
                                                <label for="date">Date</label>
                                                <input type="text" class="form-control datetimepicker-input" id="datepicker" data-toggle="datetimepicker" data-target="#datepicker">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="card" style="min-height: 200px;">
                                    <div class="card-header"><h3>Dropdown Timepicker</h3></div>
                                    <div class="card-body">
                                        <form action="">
                                            <div class="form-group">
                                                <label for="time">Time</label>
                                                <input type="text" class="form-control datetimepicker-input" id="timepicker" data-toggle="datetimepicker" data-target="#timepicker">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Mini Color</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="sub-title">Control-Types</h4>
                                                <div class="card-block inner-card-block">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">Hue (default)</h4>
                                                          <input type="text" id="hue-demo" class="form-control demo" data-control="hue" value="#ff6161">
                                                        </div>
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">Saturation</h4>
                                                          <input type="text" id="saturation-demo" class="form-control demo" data-control="saturation" value="#0088cc">
                                                        </div>
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">Brightness</h4>
                                                          <input type="text" id="brightness-demo" class="form-control demo" data-control="brightness" value="#00ffff">
                                                        </div>
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">Wheel</h4>
                                                          <input type="text" id="wheel-demo" class="form-control demo" data-control="wheel" value="#ff99ee">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="sub-title">Input Modes</h4>
                                                <div class="card-block inner-card-block">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <div class="row">
                                                                <div class="col-sm-12 mb-30">
                                                                  <h4 class="sub-title">Text field </h4>
                                                                  <input type="text" id="text-field" class="form-control demo" value="#70c24a">
                                                                </div>
                                                                <div class="col-sm-12">
                                                                  <h4 class="sub-title">Hidden Input</h4>
                                                                  <input type="hidden" id="hidden-input" class="demo" value="#db913d">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <h4 class="sub-title">Brightness</h4>
                                                            <input type="text" id="inline" class="form-control demo" data-inline="true" value="#4fc8db">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                            <h4 class="sub-title">Positions</h4>
                                                <div class="card-block inner-card-block">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">bottom left (default)</h4>
                                                          <input type="text" id="position-bottom-left" class="form-control demo" data-position="bottom left" value="#0088cc">
                                                        </div>
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">top left</h4>
                                                          <input type="text" id="position-top-left" class="form-control demo" data-position="top left" value="#0088cc">
                                                        </div>
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">bottom right</h4>
                                                          <input type="text" id="position-bottom-right" class="form-control demo" data-position="bottom right" value="#0088cc">
                                                        </div>
                                                        <div class="col-sm-3">
                                                          <h4 class="sub-title">top right</h4>
                                                          <input type="text" id="position-top-right" class="form-control demo" data-position="top right" value="#0088cc">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="sub-title">RGB(A)</h4>
                                                <div class="card-block inner-card-block">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">RGB</h4>
                                                          <input type="text" id="rgb" class="form-control demo" data-format="rgb" value="rgb(33, 147, 58)">
                                                        </div>
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">RGBA</h4>
                                                          <input type="text" id="rgba" class="form-control demo" data-format="rgb" data-opacity=".5" value="rgba(52, 64, 158, 0.5)">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="sub-title">More</h4>
                                                <div class="card-block inner-card-block">
                                                    <div class="row mb-30">
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">Opacity</h4>
                                                          <input type="text" id="opacity" class="form-control demo" data-opacity=".5" value="#766fa8">
                                                        </div>
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">Keywords</h4>
                                                          <input type="text" id="keywords" class="form-control demo" data-keywords="transparent, initial, inherit" value="transparent">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-30">
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">Default Value</h4>
                                                          <input type="text" id="default-value" class="form-control demo" data-defaultValue="#ff6600">
                                                        </div>
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">Letter Case</h4>
                                                          <input type="text" id="letter-case" class="form-control demo" data-letterCase="uppercase" value="#abcdef">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-30">
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">Swatches</h4>
                                                          <input type="text" id="swatches" class="form-control demo" data-swatches="#fff|#000|#f00|#0f0|#00f|#ff0|#0ff" value="#abcdef">
                                                        </div>
                                                        <div class="col-sm-6">
                                                          <h4 class="sub-title">Swatches and opacity</h4>
                                                          <input type="text" id="swatches-2" class="form-control demo" data-format="rgb" data-opacity="1" data-swatches="#fff|#000|#f00|#0f0|#00f|#ff0|rgba(0,0,255,0.5)" value="rgba(14, 206, 235, .5)">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="../src/js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
        <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
        <script src="../node_modules/moment/moment.js"></script>
        <script src="../node_modules/tempusdominus-bootstrap-4/build/js/tempusdominus-bootstrap-4.min.js"></script>
        <script src="../node_modules/@claviska/jquery-minicolors/jquery.minicolors.min.js"></script>
        <script src="../node_modules/datedropper/datedropper.min.js"></script>
        <script src="../dist/js/theme.min.js"></script>
        <script src="../js/form-picker.js"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
</html>
