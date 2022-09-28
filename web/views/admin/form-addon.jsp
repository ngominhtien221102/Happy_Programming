<%-- 
    Document   : form-addon
    Created on : Sep 27, 2022, 12:35:15 AM
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
                                        <i class="ik ik-edit bg-blue"></i>
                                        <div class="d-inline">
                                            <h5>Create Skill</h5>
                                            <span>Insert new skill</span>
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
                                            <li class="breadcrumb-item active" aria-current="page">Group Add-Ons</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Input Group</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-20">
                                            <form>
                                                <div class="row">
                                                    <label class="col-sm-4 col-lg-2 col-form-label">Skill's name</label>
                                                    <div class="col-sm-8 col-lg-10">
                                                        <div class="input-group">
                                                            <span class="input-group-prepend">
                                                                <label class="input-group-text">@</label>
                                                            </span>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>

                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Placeholder</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend" id="basic-addon2">
                                                            <label class="input-group-text">%</label>
                                                        </span>
                                                        <input type="text" class="form-control" placeholder="Left addon">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Right Add-on</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Right addon">
                                                        <span class="input-group-append" id="basic-addon3">
                                                            <label class="input-group-text">$</label>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Both-side Add-on</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text">$</label>
                                                        </span>
                                                        <input type="text" class="form-control" placeholder="Both-side addon">
                                                        <span class="input-group-append">
                                                            <label class="input-group-text">.20</label>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Muliple Add-ons</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text">$</label>
                                                        </span>
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text">.20</label>
                                                        </span>
                                                        <input type="text" class="form-control" placeholder="Multiple addons">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Basic group add-ons end -->
                                        <!-- Icon Group Addons start -->
                                        <div>
                                            <h4 class="sub-title">Icon Group Addons</h4>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Left Icon</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-volume"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control" placeholder="Left addon">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Right Icon</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Right addon">
                                                        <span class="input-group-append">
                                                            <label class="input-group-text"><i class="ik ik-wifi"></i></label>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Both-side Icons Addon</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-chevron-left"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control" placeholder="Right add-on">
                                                        <span class="input-group-append">
                                                            <label class="input-group-text"><i class="ik ik-chevron-right"></i></label>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Icon Group Addons end -->
                                    </div>
                                </div>
                                <!-- Input group card end -->
                                <!-- Input Group Sizes & Colors card start -->
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Input Group Colors</h3>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="sub-title">Color Addons</h4>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="input-group input-group-primary">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-tv"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-primary">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="input-group input-group-warning">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-gitlab"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-warning">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group input-group-default">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-shield"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-default">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="input-group input-group-danger">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-volume-1"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-danger">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group input-group-success">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-volume-x"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-success">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="input-group input-group-inverse">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-wifi"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-inverse">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="input-group input-group-info">
                                                    <span class="input-group-prepend"><label class="input-group-text"><i class="ik ik-bar-chart-line"></i></label></span>
                                                    <input type="text" class="form-control" placeholder="input-group-info">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Input Group Sizes & Colors card end -->
                                <!-- Input Group With Components card start -->
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Input Group With Components</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row mb-20">
                                            <div class="col-sm-12 col-lg-6">
                                                <h4 class="sub-title">Icon Group with Buttons</h4>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group input-group-button">
                                                            <div class="input-group-prepend">
                                                                <button class="btn btn-primary" type="button">Left Button</button>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="Left Button">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group input-group-button">
                                                            <input type="text" class="form-control" placeholder="Right Button">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-primary" type="button">Right Button</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group input-group-button">
                                                            <div class="input-group-prepend">
                                                                <button class="btn btn-primary" type="button">Left Button</button>
                                                            </div>
                                                            <input type="text" class="form-control" placeholder="Both side addons">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-primary" type="button">Right Button</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-lg-6">
                                                <h4 class="sub-title">Icon Group with Dropdowns</h4>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group input-group-dropdown">
                                                            <div class="input-group-prepend">
                                                                <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Left Action <i class="ik ik-chevron-down"></i></button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else</a>
                                                                    <div role="separator" class="dropdown-divider"></div>
                                                                    <a class="dropdown-item" href="#!">Separated link</a>
                                                                </div>
                                                            </div>
                                                            <input type="text" class="form-control" aria-label="Text input with dropdown button">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group input-group-dropdown">
                                                            <input type="text" class="form-control" aria-label="Text input with dropdown button">
                                                            <div class="input-group-append">
                                                                <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Right Action <i class="ik ik-chevron-down"></i></button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else</a>
                                                                    <div role="separator" class="dropdown-divider"></div>
                                                                    <a class="dropdown-item" href="#!">Separated link</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group input-group-dropdown">
                                                            <div class="input-group-btn">
                                                                <div class="input-group-prepend">
                                                                    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Click <i class="ik ik-chevron-down"></i></button>
                                                                    <div class="dropdown-menu">
                                                                        <a class="dropdown-item" href="#!">Action</a>
                                                                        <a class="dropdown-item" href="#!">Another action</a>
                                                                        <a class="dropdown-item" href="#!">Something else</a>
                                                                        <div role="separator" class="dropdown-divider"></div>
                                                                        <a class="dropdown-item" href="#!">Separated link</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <input type="text" class="form-control" aria-label="Text input with dropdown button">
                                                            <div class="input-group-append">
                                                                <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Click <i class="ik ik-chevron-down"></i></button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another action</a>
                                                                    <a class="dropdown-item" href="#!">Something else</a>
                                                                    <div role="separator" class="dropdown-divider"></div>
                                                                    <a class="dropdown-item" href="#!">Separated link</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <h4 class="sub-title">Icon Group with Checkbox</h4>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="checkbox" aria-label="Checkbox for following text input">
                                                                </div>
                                                            </div>
                                                            <input type="text" class="form-control" aria-label="Text input with dropdown button">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <h4 class="sub-title">Icon Group with Radio</h4>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" aria-label="Radio button for following text input">
                                                                </div>
                                                            </div>
                                                            <input type="text" class="form-control" aria-label="Text input with dropdown button">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Input Group With Components card end -->
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Input Group Alignment</h3>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Normal Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-volume"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control" placeholder="Normal Text">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Bold Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-gitlab"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-bold" placeholder=".form-control-bold">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Capitalize Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-tv"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-capitalize" placeholder=".form-control-capitalize">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Uppercase Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-wifi"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-uppercase" placeholder=".form-control-uppercase">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Lowercase Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-shield"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-lowercase" placeholder=".form-control-lowercase">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Varient Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-volume"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-variant" placeholder=".form-control-variant">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Left-Align Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-tv"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-left" placeholder=".form-control-left">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Center-Align Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-gitlab"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-center" placeholder=".form-control-center">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">Right-Align Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-shield"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-right" placeholder=".form-control-right">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label class="col-sm-4 col-lg-2 col-form-label">RTL Text</label>
                                                <div class="col-sm-8 col-lg-10">
                                                    <div class="input-group">
                                                        <span class="input-group-prepend">
                                                            <label class="input-group-text"><i class="ik ik-volume"></i></label>
                                                        </span>
                                                        <input type="text" class="form-control form-control-rtl" placeholder=".form-control-rtl">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
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
        <script src="../dist/js/theme.min.js"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function (b, o, i, l, e, r) {
                b.GoogleAnalyticsObject = l;
                b[l] || (b[l] =
                        function () {
                            (b[l].q = b[l].q || []).push(arguments)
                        });
                b[l].l = +new Date;
                e = o.createElement(i);
                r = o.getElementsByTagName(i)[0];
                e.src = 'https://www.google-analytics.com/analytics.js';
                r.parentNode.insertBefore(e, r)
            }(window, document, 'script', 'ga'));
            ga('create', 'UA-XXXXX-X', 'auto');
            ga('send', 'pageview');
        </script>
    </body>
</html>
