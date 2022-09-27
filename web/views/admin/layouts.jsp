<%-- 
    Document   : layouts
    Created on : Sep 27, 2022, 12:38:49 AM
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
                                        <i class="ik ik-file-text bg-blue"></i>
                                        <div class="d-inline">
                                            <h5>Layouts</h5>
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
                                                <a href="#">Pages</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Layouts</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h5 class="mb-4">Layout List</h5>

                                <div class="mb-2 clearfix">
                                    <a class="btn pt-0 pl-0 d-md-none d-lg-none" data-toggle="collapse" href="#displayOptions" role="button" aria-expanded="true" aria-controls="displayOptions">
                                        Display Options
                                        <i class="ik ik-chevron-down align-middle"></i>
                                    </a>
                                    <div class="collapse d-md-block" id="displayOptions">
                                        <span class="mr-3 mt-1 d-inline-block float-md-left">
                                            <a href="#" class="mr-2 active">
                                                <i class="ik ik-menu view-icon s"></i>
                                            </a>
                                            <a href="#" class="mr-2">
                                                <i class="ik ik-list view-icon"></i>
                                            </a>
                                            <a href="#" class="mr-2">
                                                <i class="ik ik-grid view-icon"></i>
                                            </a>
                                        </span>
                                        <div class="d-block d-md-inline-block">
                                            <div class="btn-group float-md-left mr-1 mb-1">
                                                <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Order By 
                                                    <i class="ik ik-chevron-down mr-0 align-middle"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                </div>
                                            </div>
                                            <div class="search-sm d-inline-block float-md-left mr-1 mb-1 align-top">
                                                <input placeholder="Search..." type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="float-md-right">
                                            <span class="text-muted text-small mr-2">Displaying 1-10 of 210 items </span>
                                            <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                20
                                                <i class="ik ik-chevron-down mr-0 align-middle"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">10</a>
                                                <a class="dropdown-item active" href="#">20</a>
                                                <a class="dropdown-item" href="#">30</a>
                                                <a class="dropdown-item" href="#">50</a>
                                                <a class="dropdown-item" href="#">100</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="separator mb-20"></div>

                                <div class="row">
                                    <div class="col-12 list" data-check-all="checkAll">
                                        <div class="card d-flex flex-row mb-3">
                                            <div class="d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-md-row justify-content-between min-width-zero align-items-md-center">
                                                    <a class="list-item-heading mb-1 truncate w-40 w-xs-100" href="#">
                                                        Sed id mi non quam iaculis pulvinar.
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">Art</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">02.04.2018</p>
                                                    <div class="w-15 w-xs-100">
                                                        <span class="badge badge-pill badge-secondary">On Hold</span>
                                                    </div>
                                                </div>
                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card d-flex flex-row mb-3">
                                            <div class="d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-md-row justify-content-between min-width-zero align-items-md-center">
                                                    <a class="list-item-heading mb-1 truncate w-40 w-xs-100" href="#">
                                                        Quisque non ex ac ante iaculis tincidunt at a lacus.
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">Design</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">01.04.2018</p>
                                                    <div class="w-15 w-xs-100">
                                                        <span class="badge badge-pill badge-primary">Processed</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card d-flex flex-row mb-3">
                                            <div class="d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-md-row justify-content-between min-width-zero align-items-md-center">
                                                    <a class="list-item-heading mb-1 truncate w-40 w-xs-100" href="#">
                                                        Nullam vitae justo auctor, vehicula urna eget, aliquet nisl.
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">Travel</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">25.03.2018</p>
                                                    <div class="w-15 w-xs-100">
                                                        <span class="badge badge-pill badge-primary">Processed</span>
                                                    </div>
                                                </div>
                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card d-flex flex-row mb-3">
                                            <div class="d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-md-row justify-content-between min-width-zero align-items-md-center">
                                                    <a class="list-item-heading mb-1 truncate w-40 w-xs-100" href="#">
                                                        Vestibulum viverra massa nec lacus varius semper.
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">Art</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">20.03.2018</p>
                                                    <div class="w-15 w-xs-100">
                                                        <span class="badge badge-pill badge-primary">Processed</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card d-flex flex-row mb-3">
                                            <div class="d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-md-row justify-content-between min-width-zero align-items-md-center">
                                                    <a class="list-item-heading mb-1 truncate w-40 w-xs-100" href="#">
                                                        Sed nec nisl vitae arcu tristique dignissim.
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">Design</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-xs-100">15.03.2018</p>
                                                    <div class="w-15 w-xs-100">
                                                        <span class="badge badge-pill badge-secondary">On Hold</span>
                                                    </div>
                                                </div>
                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <h5 class="mb-4 mt-30">Thumb List</h5>
                                <div class="mb-2 clearfix">
                                    <a class="btn pt-0 pl-0 d-md-none d-lg-none" data-toggle="collapse" href="#displayOptions" role="button" aria-expanded="true" aria-controls="displayOptions">
                                        Display Options
                                        <i class="ik ik-chevron-down align-middle"></i>
                                    </a>
                                    <div class="collapse d-md-block" id="displayOptions">
                                        <span class="mr-3 mt-1 d-inline-block float-md-left">
                                            <a href="#" class="mr-2">
                                                <i class="ik ik-menu view-icon s"></i>
                                            </a>
                                            <a href="#" class="mr-2 active">
                                                <i class="ik ik-list view-icon"></i>
                                            </a>
                                            <a href="#" class="mr-2">
                                                <i class="ik ik-grid view-icon"></i>
                                            </a>
                                        </span>
                                        <div class="d-block d-md-inline-block">
                                            <div class="btn-group float-md-left mr-1 mb-1">
                                                <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Order By 
                                                    <i class="ik ik-chevron-down mr-0 align-middle"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                </div>
                                            </div>
                                            <div class="search-sm d-inline-block float-md-left mr-1 mb-1 align-top">
                                                <input placeholder="Search..." type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="float-md-right">
                                            <span class="text-muted text-small mr-2">Displaying 1-10 of 210 items </span>
                                            <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                20
                                                <i class="ik ik-chevron-down mr-0 align-middle"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">10</a>
                                                <a class="dropdown-item active" href="#">20</a>
                                                <a class="dropdown-item" href="#">30</a>
                                                <a class="dropdown-item" href="#">50</a>
                                                <a class="dropdown-item" href="#">100</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="separator mb-20"></div>

                                <div class="row">
                                    <div class="col-12 list">
                                        <div class="card d-flex flex-row mb-3">
                                            <a class="d-flex" href="#">
                                                <img src="../img/portfolio-1.jpg" alt="Donec sit amet est at sem iaculis aliquam." class="list-thumbnail responsive border-0">
                                            </a>
                                            <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                                    <a href="#" class="w-40 w-sm-100">
                                                        <p class="list-item-heading mb-1 truncate">Donec sit amet est at sem iaculis aliquam.</p>
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">Design</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">13.04.2018</p>
                                                    <div class="w-15 w-sm-100">
                                                        <span class="badge badge-pill badge-primary">processed</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="card d-flex flex-row mb-3">
                                            <a class="d-flex" href="#">
                                                <img src="../img/portfolio-2.jpg" alt="Nullam porttitor elit rhoncus luctus volutpat." class="list-thumbnail responsive border-0">
                                            </a>
                                            <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                                    <a href="#" class="w-40 w-sm-100">
                                                        <p class="list-item-heading mb-1 truncate">Nullam porttitor elit rhoncus luctus volutpat.</p>
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">Travel</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">21.03.2018</p>
                                                    <div class="w-15 w-sm-100">
                                                        <span class="badge badge-pill badge-primary">Processed</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="card d-flex flex-row mb-3">
                                            <a class="d-flex" href="#">
                                                <img src="../img/portfolio-3.jpg" alt="Ut blandit velit vitae magna porttitor rhoncus." class="list-thumbnail responsive border-0">
                                            </a>
                                            <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                                    <a href="#" class="w-40 w-sm-100">
                                                        <p class="list-item-heading mb-1 truncate">Ut blandit velit vitae magna porttitor rhoncus.</p>
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">Design</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">19.02.2018</p>
                                                    <div class="w-15 w-sm-100">
                                                        <span class="badge badge-pill badge-secondary">On Hold</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="card d-flex flex-row mb-3">
                                            <a class="d-flex" href="#">
                                                <img src="../img/portfolio-4.jpg" alt="Maecenas ut felis iaculis, dapibus mi quis, cursus mi." class="list-thumbnail responsive border-0">
                                            </a>
                                            <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                                    <a href="#" class="w-40 w-sm-100">
                                                        <p class="list-item-heading mb-1 truncate">Maecenas ut felis iaculis, dapibus mi quis, cursus mi.</p>
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">Travel</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">14.02.2018</p>
                                                    <div class="w-15 w-sm-100">
                                                        <span class="badge badge-pill badge-primary">Processed</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>

                                                </div>
                                            </div>
                                        </div>


                                        <div class="card d-flex flex-row mb-3">
                                            <a class="d-flex" href="#">
                                                <img src="../img/portfolio-5.jpg" alt="Vestibulum non ante maximus, laoreet sem ut, consequat sapien." class="list-thumbnail responsive border-0">
                                            </a>
                                            <div class="pl-2 d-flex flex-grow-1 min-width-zero">
                                                <div class="card-body align-self-center d-flex flex-column flex-lg-row justify-content-between min-width-zero align-items-lg-center">
                                                    <a href="#" class="w-40 w-sm-100">
                                                        <p class="list-item-heading mb-1 truncate">Vestibulum non ante maximus, laoreet sem ut, consequat sapien.</p>
                                                    </a>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">Design</p>
                                                    <p class="mb-1 text-muted text-small w-15 w-sm-100">05.02.2018</p>
                                                    <div class="w-15 w-sm-100">
                                                        <span class="badge badge-pill badge-primary">Processed</span>
                                                    </div>
                                                </div>

                                                <div class="custom-control custom-checkbox pl-1 align-self-center pr-4">
                                                    <label class="custom-control custom-checkbox mb-0">
                                                        <input type="checkbox" class="custom-control-input">
                                                        <span class="custom-control-label"></span>
                                                    </label>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h5 class="mb-4 mt-30">Image List</h5>
                                <div class="mb-2 clearfix">
                                    <a class="btn pt-0 pl-0 d-md-none d-lg-none" data-toggle="collapse" href="#displayOptions" role="button" aria-expanded="true" aria-controls="displayOptions">
                                        Display Options
                                        <i class="ik ik-chevron-down align-middle"></i>
                                    </a>
                                    <div class="collapse d-md-block" id="displayOptions">
                                        <span class="mr-3 mt-1 d-inline-block float-md-left">
                                            <a href="#" class="mr-2">
                                                <i class="ik ik-menu view-icon s"></i>
                                            </a>
                                            <a href="#" class="mr-2">
                                                <i class="ik ik-list view-icon"></i>
                                            </a>
                                            <a href="#" class="mr-2 active">
                                                <i class="ik ik-grid view-icon"></i>
                                            </a>
                                        </span>
                                        <div class="d-block d-md-inline-block">
                                            <div class="btn-group float-md-left mr-1 mb-1">
                                                <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Order By 
                                                    <i class="ik ik-chevron-down mr-0 align-middle"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                </div>
                                            </div>
                                            <div class="search-sm d-inline-block float-md-left mr-1 mb-1 align-top">
                                                <input placeholder="Search..." type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="float-md-right">
                                            <span class="text-muted text-small mr-2">Displaying 1-10 of 210 items </span>
                                            <button class="btn btn-outline-dark btn-xs dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                20
                                                <i class="ik ik-chevron-down mr-0 align-middle"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="#">10</a>
                                                <a class="dropdown-item active" href="#">20</a>
                                                <a class="dropdown-item" href="#">30</a>
                                                <a class="dropdown-item" href="#">50</a>
                                                <a class="dropdown-item" href="#">100</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="separator mb-20"></div>

                                <div class="row list">
                                    <div class="col-xl-3 col-lg-4 col-12 col-sm-6 mb-4">
                                        <div class="card">
                                            <div class="position-relative">
                                                <img class="card-img-top" src="../img/portfolio-6.jpg" alt="Card image cap">
                                                <span class="badge badge-pill badge-primary position-absolute badge-top-left">New</span>
                                                <span class="badge badge-pill badge-secondary position-absolute badge-top-left-2">Trending</span>
                                            </div>
                                            <div class="card-body">
                                                <p class="list-item-heading mb-4">Pellentesque ac enim sed purus auctor convallis ut in nibh.</p>
                                                <footer>
                                                    <p class="text-muted text-small mb-0 font-weight-light">18.08.2018</p>
                                                </footer>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-3 col-lg-4 col-12 col-sm-6 mb-4">
                                        <div class="card">
                                            <div class="position-relative">
                                                <img class="card-img-top" src="../img/portfolio-7.jpg" alt="Card image cap">
                                                <span class="badge badge-pill badge-primary position-absolute badge-top-left">New</span>
                                                <span class="badge badge-pill badge-secondary position-absolute badge-top-left-2">Trending</span>
                                            </div>
                                            <div class="card-body">
                                                <p class="list-item-heading mb-4">Cras tincidunt dui ac nisi laoreet, quis ornare nisl consectetur.</p>
                                                <footer>
                                                    <p class="text-muted text-small mb-0 font-weight-light">18.08.2018</p>
                                                </footer>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-12 col-sm-6 mb-4">
                                        <div class="card">
                                            <div class="position-relative">
                                                <img class="card-img-top" src="../img/portfolio-8.jpg" alt="Card image cap">
                                                <span class="badge badge-pill badge-primary position-absolute badge-top-left">New</span>
                                                <span class="badge badge-pill badge-secondary position-absolute badge-top-left-2">Trending</span>
                                            </div>
                                            <div class="card-body">
                                                <p class="list-item-heading mb-4">Nullam eleifend quam non odio eleifend, vitae rutrum velit porttitor.</p>
                                                <footer>
                                                    <p class="text-muted text-small mb-0 font-weight-light">18.08.2018</p>
                                                </footer>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-12 col-sm-6 mb-4">
                                        <div class="card">
                                            <div class="position-relative">
                                                <img class="card-img-top" src="../img/portfolio-9.jpg" alt="Card image cap">
                                                <span class="badge badge-pill badge-primary position-absolute badge-top-left">New</span>
                                                <span class="badge badge-pill badge-secondary position-absolute badge-top-left-2">Trending</span>
                                            </div>
                                            <div class="card-body">
                                                <p class="list-item-heading mb-4">Maecenas convallis metus sed mi elementum, quis sagittis lectus tempor.</p>
                                                <footer>
                                                    <p class="text-muted text-small mb-0 font-weight-light">18.08.2018</p>
                                                </footer>
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
        <script src="../node_modules/screenfull/dist/screenfull.js"></script>
        <script src="../dist/js/theme.min.js"></script>
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
