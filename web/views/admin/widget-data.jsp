<%-- 
    Document   : widget-data
    Created on : Sep 27, 2022, 12:37:31 AM
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
                                            <h5>Widget Data</h5>
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
                                            <li class="breadcrumb-item active" aria-current="page">Widget Data</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- product and new customar start -->
                            <div class="col-xl-4 col-md-6">
                                <div class="card new-cust-card">
                                    <div class="card-header">
                                        <h3>New Customers</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="align-middle mb-25">
                                            <img src="../img/users/1.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                            <div class="d-inline-block">
                                                <a href="#!"><h6>Alex Thompson</h6></a>
                                                <p class="text-muted mb-0">Cheers!</p>
                                                <span class="status active"></span>
                                            </div>
                                        </div>
                                        <div class="align-middle mb-25">
                                            <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                            <div class="d-inline-block">
                                                <a href="#!"><h6>John Doue</h6></a>
                                                <p class="text-muted mb-0">stay hungry stay foolish!</p>
                                                <span class="status active"></span>
                                            </div>
                                        </div>
                                        <div class="align-middle mb-25">
                                            <img src="../img/users/3.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                            <div class="d-inline-block">
                                                <a href="#!"><h6>Alex Thompson</h6></a>
                                                <p class="text-muted mb-0">Cheers!</p>
                                                <span class="status deactive text-mute"><i class="far fa-clock mr-10"></i>30 min ago</span>
                                            </div>
                                        </div>
                                        <div class="align-middle mb-25">
                                            <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                            <div class="d-inline-block">
                                                <a href="#!"><h6>John Doue</h6></a>
                                                <p class="text-muted mb-0">Cheers!</p>
                                                <span class="status deactive text-mute"><i class="far fa-clock mr-10"></i>10 min ago</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8 col-md-6">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>New Products</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Product Name</th>
                                                        <th>Image</th>
                                                        <th>Status</th>
                                                        <th>Price</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>HeadPhone</td>
                                                        <td><img src="../img/widget/p1.jpg" alt="" class="img-fluid img-20"></td>
                                                        <td>
                                                            <div class="p-status bg-green"></div>
                                                        </td>
                                                        <td>$10</td>
                                                        <td>
                                                            <a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a>
                                                            <a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Iphone 6</td>
                                                        <td><img src="../img/widget/p2.jpg" alt="" class="img-fluid img-20"></td>
                                                        <td>
                                                            <div class="p-status bg-green"></div>
                                                        </td>
                                                        <td>$20</td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jacket</td>
                                                        <td><img src="../img/widget/p3.jpg" alt="" class="img-fluid img-20"></td>
                                                        <td>
                                                            <div class="p-status bg-green"></div>
                                                        </td>
                                                        <td>$35</td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Sofa</td>
                                                        <td><img src="../img/widget/p4.jpg" alt="" class="img-fluid img-20"></td>
                                                        <td>
                                                            <div class="p-status bg-green"></div>
                                                        </td>
                                                        <td>$85</td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Iphone 6</td>
                                                        <td><img src="../img/widget/p2.jpg" alt="" class="img-fluid img-20"></td>
                                                        <td>
                                                            <div class="p-status bg-green"></div>
                                                        </td>
                                                        <td>$20</td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- product and new customar end -->

                            <!-- top contact and member performance start -->
                            <div class="col-xl-6 col-md-6">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>Top Contacts</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Company</th>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                        <th>Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Apple Company</td>
                                                        <td>23/05/2017</td>
                                                        <td>04/08/2018</td>
                                                        <td><label class="badge badge-success">Paid</label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Envato Pvt Ltd.</td>
                                                        <td>20/03/2017</td>
                                                        <td>04/08/2019</td>
                                                        <td><label class="badge badge-danger">Unpaid</label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Dribble Company</td>
                                                        <td>13/05/2017</td>
                                                        <td>03/01/2018</td>
                                                        <td><label class="badge badge-success">Paid</label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Adobe Family</td>
                                                        <td>11/01/2016</td>
                                                        <td>02/03/2017</td>
                                                        <td><label class="badge badge-success">Paid</label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Apple Company</td>
                                                        <td>23/05/2017</td>
                                                        <td>04/08/2018</td>
                                                        <td><label class="badge badge-danger">Unpaid</label></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>Member’s  performance</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0 without-header">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6 class="mb-0">Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <h6 class="fw-700">$78.001<i class="fas fa-level-down-alt text-red ml-10"></i></h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6 class="mb-0">James Alexander</h6>
                                                                    <p class="text-muted mb-0">Sales executive , EL</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <h6 class="fw-700">$89.051<i class="fas fa-level-up-alt text-green ml-10"></i></h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6 class="mb-0">Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <h6 class="fw-700">$89.051<i class="fas fa-level-up-alt text-green ml-10"></i></h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6 class="mb-0">James Alexander</h6>
                                                                    <p class="text-muted mb-0">Sales executive , EL</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <h6 class="fw-700">$78.001<i class="fas fa-level-down-alt text-red ml-10"></i></h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6 class="mb-0">Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-right">
                                                            <h6 class="fw-700">$78.001<i class="fas fa-level-down-alt text-red ml-10"></i></h6>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- top contact and member performance end -->

                            <!-- lettest acivity and statustic card start -->
                            <div class="col-xl-4 col-md-12">
                                <div class="card latest-update-card">
                                    <div class="card-header">
                                        <h3>What’s New</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="scroll-widget">
                                            <div class="latest-update-box">
                                                <div class="row pt-20 pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15 update-icon">
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Your Manager Posted.</h6></a>
                                                        <p class="text-muted mb-0">Jonny michel</p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="ik ik-briefcase bg-red update-icon"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>You have 3 pending Task.</h6></a>
                                                        <p class="text-muted mb-0">Hemilton</p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="ik ik-check fw-600 bg-green update-icon"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>New Order Received.</h6></a>
                                                        <p class="text-muted mb-0">Hemilton</p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="ik ik-briefcase bg-red update-icon"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>You have 3 pending Task.</h6></a>
                                                        <p class="text-muted mb-0">Hemilton</p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="ik ik-check fw-600 bg-green update-icon"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>New Order Received.</h6></a>
                                                        <p class="text-muted mb-0">Hemilton</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15 update-icon">
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Your Manager Posted.</h6></a>
                                                        <p class="text-muted mb-0">Jonny michel</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-6">
                                <div class="card latest-update-card">
                                    <div class="card-header">
                                        <h3>Latest Activity</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="scroll-widget">
                                            <div class="latest-update-box">
                                                <div class="row pt-20 pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="b-primary update-icon ring"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Devlopment & Update</h6></a>
                                                        <p class="text-muted mb-0">Lorem ipsum dolor sit amet, <a href="#!" class="text-blue"> More</a></p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="b-primary update-icon ring"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Showcases</h6></a>
                                                        <p class="text-muted mb-0">Lorem dolor sit amet, <a href="#!" class="text-blue"> More</a></p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="b-success update-icon ring"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Miscellaneous</h6></a>
                                                        <p class="text-muted mb-0">Lorem ipsum dolor sit ipsum amet, <a href="#!" class="text-green"> More</a></p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="b-primary update-icon ring"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Showcases</h6></a>
                                                        <p class="text-muted mb-0">Lorem dolor sit amet, <a href="#!" class="text-blue"> More</a></p>
                                                    </div>
                                                </div>
                                                <div class="row pb-30">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="b-success update-icon ring"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Miscellaneous</h6></a>
                                                        <p class="text-muted mb-0">Lorem ipsum dolor sit ipsum amet, <a href="#!" class="text-green"> More</a></p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-auto text-right update-meta pr-0">
                                                        <i class="b-danger update-icon ring"></i>
                                                    </div>
                                                    <div class="col pl-5">
                                                        <a href="#!"><h6>Your Manager Posted.</h6></a>
                                                        <p class="text-muted mb-0">Lorem ipsum dolor sit amet, <a href="#!" class="text-red"> More</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-6">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>Campaign  Statistics</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block pb-0">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0 without-header">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <h3>100</h3></td>
                                                        <td>
                                                            <p>Engagement</p>
                                                        </td>
                                                        <td class="text-right">
                                                            <label class="badge badge-warning">43%</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>480</h3></td>
                                                        <td>
                                                            <p>Likes</p>
                                                        </td>
                                                        <td class="text-right">
                                                            <label class="badge badge-success">58%</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>230</h3></td>
                                                        <td>
                                                            <p>Clicks</p>
                                                        </td>
                                                        <td class="text-right">
                                                            <label class="badge badge-danger">30%</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h3>480</h3></td>
                                                        <td>
                                                            <p>Likes</p>
                                                        </td>
                                                        <td class="text-right">
                                                            <label class="badge badge-danger">30%</label>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- lettest acivity and statustic card end -->

                            <!-- Customer overview start -->
                            <div class="col-md-12">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>Customer  Overview</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Customer</th>
                                                        <th>Company</th>
                                                        <th>Lead Score</th>
                                                        <th>Date</th>
                                                        <th>Tags</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6>Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Pinterest</td>
                                                        <td>223</td>
                                                        <td>19-11-2018</td>
                                                        <td>
                                                            <label class="badge badge-primary">Sketch</label>
                                                            <label class="badge badge-primary">Ui</label>
                                                        </td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6>James Alexander</h6>
                                                                    <p class="text-muted mb-0">Sales executive , EL</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Facebook</td>
                                                        <td>268</td>
                                                        <td>19-11-2018</td>
                                                        <td>
                                                            <label class="badge badge-primary">Ux</label>
                                                            <label class="badge badge-danger">Ui</label>
                                                            <label class="badge badge-danger">php</label>
                                                        </td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6>Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Twitter</td>
                                                        <td>293</td>
                                                        <td>16-03-2018</td>
                                                        <td>
                                                            <label class="badge badge-danger">Sketch</label>
                                                            <label class="badge badge-primary">Ui</label>
                                                        </td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6>Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Pinterest</td>
                                                        <td>223</td>
                                                        <td>19-11-2018</td>
                                                        <td>
                                                            <label class="badge badge-primary">Ux</label>
                                                            <label class="badge badge-success">Ui</label>
                                                            <label class="badge badge-warning">php</label>
                                                        </td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6>James Alexander</h6>
                                                                    <p class="text-muted mb-0">Sales executive , EL</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Facebook</td>
                                                        <td>268</td>
                                                        <td>19-11-2018</td>
                                                        <td>
                                                            <label class="badge badge-primary">Sketch</label>
                                                            <label class="badge badge-primary">Ui</label>
                                                        </td>

                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <img src="../img/users/4.jpg" alt="user image" class="rounded-circle img-40 align-top mr-15">
                                                                <div class="d-inline-block">
                                                                    <h6>Shirley  Hoe</h6>
                                                                    <p class="text-muted mb-0">Sales executive , NY</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Twitter</td>
                                                        <td>293</td>
                                                        <td>16-03-2018</td>
                                                        <td>
                                                            <label class="badge badge-danger">Sketch</label>
                                                            <label class="badge badge-primary">Ui</label>
                                                        </td>
                                                        <td><a href="#!"><i class="ik ik-edit f-16 mr-15 text-green"></i></a><a href="#!"><i class="ik ik-trash-2 f-16 text-red"></i></a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Customer overview end -->

                            <!-- testimonial and top selling start -->
                            <div class="col-xl-4 col-md-6">
                                <div class="card testimonial-card table-card">
                                    <div class="card-header">
                                        <h3>Testimonial</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="review-block">
                                            <div class="row">
                                                <div class="col-sm-auto pr-0">
                                                    <img src="../img/users/2.jpg" alt="user image" class="rounded-circle profile-img cust-img mb-15">
                                                </div>
                                                <div class="col">
                                                    <h6 class="mb-15">John Deo</h6>
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <div class="progress">
                                                                <div class="progress-bar bg-green" style="width:85%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <h6 class="mb-0">3.2</h6></div>
                                                    </div>
                                                    <p class="mt-15 mb-0 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting.</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-auto pr-0">
                                                    <img src="../img/users/1.jpg" alt="user image" class="rounded-circle profile-img cust-img mb-15">
                                                </div>
                                                <div class="col">
                                                    <h6 class="mb-15">John Deo</h6>
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <div class="progress">
                                                                <div class="progress-bar bg-blue" style="width:85%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <h6 class="mb-0">3.2</h6></div>
                                                    </div>
                                                    <p class="mt-15 mb-0 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting.</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-auto pr-0">
                                                    <img src="../img/users/1.jpg" alt="user image" class="rounded-circle profile-img cust-img mb-15">
                                                </div>
                                                <div class="col">
                                                    <h6 class="mb-15">John Deo</h6>
                                                    <div class="row align-items-center">
                                                        <div class="col">
                                                            <div class="progress">
                                                                <div class="progress-bar bg-red" style="width:85%"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <h6 class="mb-0">3.2</h6></div>
                                                    </div>
                                                    <p class="mt-15 mb-0 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8 col-md-6">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>New Products</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block pb-0">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Product Code</th>
                                                        <th>Customer</th>
                                                        <th>Status</th>
                                                        <th>Rating</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Sofa</td>
                                                        <td>#PHD001</td>
                                                        <td><a href="#">abc@gmail.com</a></td>
                                                        <td><label class="badge badge-danger">Out Stock</label></td>
                                                        <td>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Computer</td>
                                                        <td>#PHD002</td>
                                                        <td><a href="#">cdc@gmail.com</a></td>
                                                        <td><label class="badge badge-success">In Stock</label></td>
                                                        <td>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mobile</td>
                                                        <td>#PHD003</td>
                                                        <td><a href="#">pqr@gmail.com</a></td>
                                                        <td><label class="badge badge-danger">Out Stock</label></td>
                                                        <td>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Coat</td>
                                                        <td>#PHD004</td>
                                                        <td><a href="#">bcs@gmail.com</a></td>
                                                        <td><label class="badge badge-success">In Stock</label></td>
                                                        <td>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Watch</td>
                                                        <td>#PHD005</td>
                                                        <td><a href="#">cdc@gmail.com</a></td>
                                                        <td><label class="badge badge-success">In Stock</label></td>
                                                        <td>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Shoes</td>
                                                        <td>#PHD006</td>
                                                        <td><a href="#">pqr@gmail.com</a></td>
                                                        <td><label class="badge badge-danger">Out Stock</label></td>
                                                        <td>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-yellow"></i></a>
                                                            <a href="#!"><i class="fa fa-star f-12 text-default"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- testimonial and top selling end -->

                            <!-- Customer overview start -->
                            <div class="col-md-12">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>Project Task List</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive">
                                            <table class="table table-hover mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Subject</th>
                                                        <th>Regarding</th>
                                                        <th>Activity Type</th>
                                                        <th>Activity Status</th>
                                                        <th>Owner</th>
                                                        <th>Priority</th>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Building Marketing List</td>
                                                        <td>Software pro</td>
                                                        <td>Task</td>
                                                        <td><label class="badge badge-danger">Open</label></td>
                                                        <td>Ken Malit</td>
                                                        <td>Normal</td>
                                                        <td>7/8/2017</td>
                                                        <td>8/9/2018</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Project Task List</td>
                                                        <td>Software pro</td>
                                                        <td>Task</td>
                                                        <td><label class="badge badge-primary">New</label></td>
                                                        <td>Ken Malit</td>
                                                        <td>Normal</td>
                                                        <td>7/8/2017</td>
                                                        <td>8/9/2018</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Building Marketing List</td>
                                                        <td>Software pro</td>
                                                        <td>Task</td>
                                                        <td><label class="badge badge-danger">Open</label></td>
                                                        <td>Ken Malit</td>
                                                        <td>Normal</td>
                                                        <td>7/8/2017</td>
                                                        <td>8/9/2018</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Project Task List</td>
                                                        <td>Software pro</td>
                                                        <td>Task</td>
                                                        <td><label class="badge badge-success">Close</label></td>
                                                        <td>Ken Malit</td>
                                                        <td>Normal</td>
                                                        <td>7/8/2017</td>
                                                        <td>8/9/2018</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Building Marketing List</td>
                                                        <td>Software pro</td>
                                                        <td>Task</td>
                                                        <td><label class="badge badge-primary">New</label></td>
                                                        <td>Ken Malit</td>
                                                        <td>Normal</td>
                                                        <td>7/8/2017</td>
                                                        <td>8/9/2018</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Customer overview end -->

                            <!-- feed, project,chat start -->
                            <div class="col-xl-4 col-md-12">
                                <div class="card feed-card">
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
                                    <div class="card-block">
                                        <div class="row mb-30 align-items-center">
                                            <div class="col-auto pr-0">
                                                <i class="ik ik-bell bg-blue feed-icon"></i>
                                            </div>
                                            <div class="col">
                                                <a href="#!"><h6 class="mb-5">You have 3 pending tasks. <span class="text-muted float-right f-14">Just Now</span></h6></a>
                                            </div>
                                        </div>
                                        <div class="row mb-30 align-items-center">
                                            <div class="col-auto pr-0">
                                                <i class="ik ik-shopping-cart bg-red feed-icon"></i>
                                            </div>
                                            <div class="col">
                                                <a href="#!"><h6 class="mb-5">New order received <span class="text-muted float-right f-14">Just Now</span></h6></a>
                                            </div>
                                        </div>
                                        <div class="row mb-30 align-items-center">
                                            <div class="col-auto pr-0">
                                                <i class="ik ik-file-text bg-green feed-icon"></i>
                                            </div>
                                            <div class="col">
                                                <a href="#!"><h6 class="mb-5">You have 3 pending tasks. <span class="text-muted float-right f-14">Just Now</span></h6></a>
                                            </div>
                                        </div>
                                        <div class="row mb-30 align-items-center">
                                            <div class="col-auto pr-0">
                                                <i class="ik ik-bell bg-blue feed-icon"></i>
                                            </div>
                                            <div class="col">
                                                <a href="#!"><h6 class="mb-5">You have 3 pending tasks. <span class="text-muted float-right f-14">Just Now</span></h6></a>
                                            </div>
                                        </div>
                                        <div class="row mb-30 align-items-center">
                                            <div class="col-auto pr-0">
                                                <i class="ik ik-file-text bg-green feed-icon"></i>
                                            </div>
                                            <div class="col">
                                                <a href="#!"><h6 class="mb-5">You have 3 pending tasks. <span class="text-muted float-right f-14">Just Now</span></h6></a>
                                            </div>
                                        </div>
                                        <div class="row mb-20 align-items-center">
                                            <div class="col-auto pr-0">
                                                <i class="ik ik-shopping-cart bg-red feed-icon"></i>
                                            </div>
                                            <div class="col">
                                                <a href="#!"><h6 class="mb-5">New order received <span class="text-muted float-right f-14">Just Now</span></h6></a>
                                            </div>
                                        </div>
                                        <div class="text-right">
                                            <a href="#!" class="b-b-primary text-primary">View all Feeds</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-6">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>My Projects</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block widget-last-task">
                                        <p class="mb-10">New Dashboard <span class="float-right text-muted f-14">5 Mins ago</span></p>
                                        <ul class="list-unstyled mb-20">
                                            <li class="d-inline-block"><img src="../img/users/2.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/3.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/2.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                        </ul>
                                        <p class="mb-10 ">Web Design <span class="float-right text-muted f-14">8 Mins ago</span></p>
                                        <ul class="list-unstyled  mb-20">
                                            <li class="d-inline-block"><img src="../img/users/2.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/3.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                        </ul>
                                        <p class="mb-10">Android Design <span class="float-right text-muted f-14">12 Mins ago</span></p>
                                        <ul class="list-unstyled mb-20">
                                            <li class="d-inline-block"><img src="../img/users/4.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/2.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/3.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                        </ul>
                                        <p class="mb-10">New Dashboard <span class="float-right text-muted f-14">5 Mins ago</span></p>
                                        <ul class="list-unstyled mb-20">
                                            <li class="d-inline-block"><img src="../img/users/2.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/3.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                            <li class="d-inline-block"><img src="../img/users/2.jpg" alt="user-image" class="rounded-circle img-30 mr-15" data-toggle="tooltip" data-placement="top" title="Tooltip on top"></li>
                                        </ul>
                                        <div class="right-icon-control m-t-15">
                                            <div class="input-group input-group-button">
                                                <input type="text" class="form-control" placeholder="Add Project">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary" type="button"><i class="ik ik-plus"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-6">
                                <div class="card chat-card">
                                    <div class="card-header">
                                        <h3>Chat</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block">
                                        <div class="row mb-20 received-chat">
                                            <div class="col-auto pr-0">
                                                <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40">
                                            </div>
                                            <div class="col">
                                                <div class="msg">
                                                    <p class="mb-0">Nice to meet you!</p>
                                                </div>
                                                <p class="text-muted mb-0"><i class="fa fa-clock-o mr-10"></i>10:20am</p>
                                            </div>
                                        </div>
                                        <div class="row mb-20 send-chat">
                                            <div class="col">
                                                <div class="msg">
                                                    <p class="mb-0">Nice to meet you!</p>
                                                </div>
                                                <p class="text-muted mb-0"><i class="fa fa-clock-o mr-10"></i>10:20am</p>
                                            </div>
                                            <div class="col-auto pl-0">
                                                <img src="../img/users/3.jpg" alt="user image" class="rounded-circle img-40">
                                            </div>
                                        </div>
                                        <div class="row mb-20 received-chat">
                                            <div class="col-auto pr-0">
                                                <img src="../img/users/2.jpg" alt="user image" class="rounded-circle img-40">
                                            </div>
                                            <div class="col">
                                                <div class="msg">
                                                    <p class="mb-0">Nice to meet you!</p>
                                                    <img src="../img/portfolio-1.jpg" alt="">
                                                    <img src="../img/portfolio-3.jpg" alt="">
                                                </div>
                                                <p class="text-muted mb-0"><i class="fa fa-clock-o mr-10"></i>10:20am</p>
                                            </div>
                                        </div>
                                        <div class="right-icon-control">
                                            <div class="input-group input-group-button">
                                                <input type="text" class="form-control" placeholder="Send message">
                                                <div class="input-group-append">
                                                    <button class="btn btn-primary" type="button"><i class="ik ik-message-square"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- feed, project,chat end -->

                            <!-- Application Sales start -->
                            <div class="col-md-12">
                                <div class="card table-card">
                                    <div class="card-header">
                                        <h3>Application Sales</h3>
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="ik ik-chevron-left action-toggle"></i></li>
                                                <li><i class="ik ik-minus minimize-card"></i></li>
                                                <li><i class="ik ik-x close-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-block p-b-0">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-borderless mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>Application</th>
                                                        <th>Sales</th>
                                                        <th>Change</th>
                                                        <th>Avg Price</th>
                                                        <th>Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <h6>Able Pro</h6>
                                                                <p class="text-muted mb-0">Powerful Admin Theme</p>
                                                            </div>
                                                        </td>
                                                        <td>16,300</td>
                                                        <td>
                                                            <div id="app-sale1" style="height:50px"></div>
                                                        </td>
                                                        <td>$53</td>
                                                        <td class="text-blue">$15,652</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <h6>Photoshop</h6>
                                                                <p class="text-muted mb-0">Design Software</p>
                                                            </div>
                                                        </td>
                                                        <td>26,421</td>
                                                        <td>
                                                            <div id="app-sale2" style="height:50px"></div>
                                                        </td>
                                                        <td>$35</td>
                                                        <td class="text-blue">$18,785</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <h6>Guruable</h6>
                                                                <p class="text-muted mb-0">Best Admin Template</p>
                                                            </div>
                                                        </td>
                                                        <td>8,265</td>
                                                        <td>
                                                            <div id="app-sale3" style="height:50px"></div>
                                                        </td>
                                                        <td>$98</td>
                                                        <td class="text-blue">$9,652</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-inline-block align-middle">
                                                                <h6>Flatable</h6>
                                                                <p class="text-muted mb-0">Admin App</p>
                                                            </div>
                                                        </td>
                                                        <td>10,652</td>
                                                        <td>
                                                            <div id="app-sale4" style="height:50px"></div>
                                                        </td>
                                                        <td>$20</td>
                                                        <td class="text-blue">$7,856</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <div class="text-right">
                                            <a href="#!" class=" b-b-primary text-primary">View all Projects</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Application Sales end -->

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
                        <span class="textenter text-sm-left d-md-inline-block">Copyright © 2018 ThemeKit v1.0. All Rights Reserved.</span>
                        <span class="float-none float-sm-right mt-1 mt-sm-0 textenter">Crafted with <i class="fa fa-heart text-danger"></i> by <a href="http://lavalite.org/" class="text-dark" target="_blank">Lavalite</a></span>
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
        <script src="../node_modules/screenfull/dist/screenfull.js"></script>
        <script src="../node_modules/owl.carousel/dist/owl.carousel.min.js"></script>
        <script src="../node_modules/chartist/dist/chartist.min.js"></script>
        <script src="../node_modules/flot-charts/jquery.flot.js"></script>
        <script src="../node_modules/flot-charts/jquery.flot.categories.js"></script>
        <script src="../node_modules/flot.curvedlines/curvedLines.js"></script>
        <script src="../node_modules/jquery.flot.tooltip/js/jquery.flot.tooltip.js"></script>
        <script src="../dist/js/theme.min.js"></script>
        <script src="../js/widget-data.js"></script>
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

