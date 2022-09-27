<%-- 
    Document   : form-advance
    Created on : Sep 27, 2022, 12:35:57 AM
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
                                            <h5>Advance</h5>
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
                                            <li class="breadcrumb-item active" aria-current="page">Advance</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Switches</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Single Switche</h4>
                                                <input type="checkbox" class="js-single" checked />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Multiple Switches</h4>
                                                <input type="checkbox" class="js-switch" checked />
                                                <input type="checkbox" class="js-switch" checked />
                                                <input type="checkbox" class="js-switch" checked />
                                            </div>
                                            <div class="col-sm-12 col-xl-4 mb-30">
                                                <h4 class="sub-title">Enable Disable Switches</h4>
                                                <input type="checkbox" class="js-dynamic-state" checked />
                                                <button class="btn btn-primary js-dynamic-enable">Enable</button>
                                                <button class="btn btn-inverse js-dynamic-disable">Disable</button>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <h4 class="sub-title">Color Switches</h4>
                                                <input type="checkbox" class="js-default" checked />
                                                <input type="checkbox" class="js-primary" checked />
                                                <input type="checkbox" class="js-success" checked />
                                                <input type="checkbox" class="js-info" checked />
                                                <input type="checkbox" class="js-warning" checked />
                                                <input type="checkbox" class="js-danger" checked />
                                                <input type="checkbox" class="js-inverse" checked />
                                            </div>
                                            <div class="col-sm-4">
                                                <h4 class="sub-title">Switch Sizes</h4>
                                                <input type="checkbox" class="js-large" checked />
                                                <input type="checkbox" class="js-medium" checked />
                                                <input type="checkbox" class="js-small" checked />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h3>Radio</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-md-6 col-xl-4 mb-30">
                                                <h4 class="sub-title">Radio Fill Button</h4>
                                                <div class="form-radio">
                                                    <form>
                                                        <div class="radio radio-inline">
                                                            <label>
                                                                <input type="radio" name="radio" checked="checked">
                                                                <i class="helper"></i>Radio 1
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-inline">
                                                            <label>
                                                                <input type="radio" name="radio">
                                                                <i class="helper"></i>Radio 2
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-inline radio-disable">
                                                            <label>
                                                                <input type="radio" disabled="" name="radio">
                                                                <i class="helper"></i>Radio Disable
                                                            </label>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-6 col-xl-4 mb-30">
                                                <h4 class="sub-title">Radio outline Button</h4>
                                                <div class="form-radio">
                                                    <form>
                                                        <div class="radio radio-outline radio-inline">
                                                            <label>
                                                                <input type="radio" name="radio" checked="checked">
                                                                <i class="helper"></i>Radio 1
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-outline radio-inline">
                                                            <label>
                                                                <input type="radio" name="radio">
                                                                <i class="helper"></i>Radio 2
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-inline radio-disable">
                                                            <label>
                                                                <input type="radio" disabled="" name="radio">
                                                                <i class="helper"></i>Radio Disable
                                                            </label>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-md-6 col-xl-4 mb-30">
                                                <h4 class="sub-title">Radio Button</h4>
                                                <div class="form-radio">
                                                    <form>
                                                        <div class="radio radiofill radio-inline">
                                                            <label>
                                                                <input type="radio" name="radio" checked="checked">
                                                                <i class="helper"></i>Radio-fill 1
                                                            </label>
                                                        </div>
                                                        <div class="radio radiofill radio-inline">
                                                            <label>
                                                                <input type="radio" name="radio">
                                                                <i class="helper"></i>Radio-fill 2
                                                            </label>
                                                        </div>
                                                        <div class="radio radiofill radio-inline radio-disable">
                                                            <label>
                                                                <input type="radio" disabled="" name="radio">
                                                                <i class="helper"></i>Radio-fill Disable
                                                            </label>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <h4 class="sub-title">Color Radio Button</h4>
                                        <div class="form-radio mb-30">
                                            <form>
                                                <div class="radio radiofill radio-default radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Default Color
                                                    </label>
                                                </div>
                                                <div class="radio radiofill radio-primary radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Primary Color
                                                    </label>
                                                </div>
                                                <div class="radio radiofill radio-success radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Success Color
                                                    </label>
                                                </div>
                                                <div class="radio radiofill radio-info radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Info Color
                                                    </label>
                                                </div>
                                                <div class="radio radiofill radio-warning radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Warning Color
                                                    </label>
                                                </div>
                                                <div class="radio radiofill radio-danger radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Danger Color
                                                    </label>
                                                </div>
                                                <div class="radio radiofill radio-inverse radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Inverse Color
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                        <h4 class="sub-title">Color Radio material Button</h4>
                                        <div class="form-radio mb-30">
                                            <form>
                                                <div class="radio radio-matrial radio-default radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Default Color
                                                    </label>
                                                </div>
                                                <div class="radio radio-matrial radio-primary radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Primary Color
                                                    </label>
                                                </div>
                                                <div class="radio radio-matrial radio-success radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Success Color
                                                    </label>
                                                </div>
                                                <div class="radio radio-matrial radio-info radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Info Color
                                                    </label>
                                                </div>
                                                <div class="radio radio-matrial radio-warning radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Warning Color
                                                    </label>
                                                </div>
                                                <div class="radio radio-matrial radio-danger radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Danger Color
                                                    </label>
                                                </div>
                                                <div class="radio radio-matrial radio-inverse radio-inline">
                                                    <label>
                                                        <input type="radio" name="radio" checked="checked">
                                                        <i class="helper"></i>Inverse Color
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h3>Checkbox</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-6 mb-30">
                                                <h4 class="sub-title">Border Checkbox</h4>
                                                <div class="border-checkbox-section">
                                                    <div class="border-checkbox-group border-checkbox-group-default">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox0">
                                                        <label class="border-checkbox-label" for="checkbox0">Do you like it?</label>
                                                    </div>
                                                    <div class="border-checkbox-group border-checkbox-group-primary">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox1">
                                                        <label class="border-checkbox-label" for="checkbox1">Primary</label>
                                                    </div>
                                                    <div class="border-checkbox-group border-checkbox-group-success">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox2">
                                                        <label class="border-checkbox-label" for="checkbox2">Success</label>
                                                    </div>
                                                    <div class="border-checkbox-group border-checkbox-group-info">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox3">
                                                        <label class="border-checkbox-label" for="checkbox3">Info</label>
                                                    </div>
                                                    <div class="border-checkbox-group border-checkbox-group-warning">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox4">
                                                        <label class="border-checkbox-label" for="checkbox4">Warning</label>
                                                    </div>
                                                    <div class="border-checkbox-group border-checkbox-group-danger">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox5">
                                                        <label class="border-checkbox-label" for="checkbox5">Danger</label>
                                                    </div>
                                                    <div class="border-checkbox-group">
                                                        <input class="border-checkbox" type="checkbox" id="checkbox6" disabled>
                                                        <label class="border-checkbox-label" for="checkbox6">Disabled</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-xl-6 mb-30">
                                                <h4 class="sub-title">Fade-in Checkbox</h4>
                                                <div class="checkbox-fade fade-in-default">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-default"></i>
                                                        </span>
                                                        <span>Default</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-fade fade-in-primary">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-primary"></i>
                                                        </span>
                                                        <span>Primary</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-fade fade-in-warning">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-warning"></i>
                                                        </span>
                                                        <span> Warning</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-fade fade-in-success">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-success"></i>
                                                        </span>
                                                        <span>Success</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-fade fade-in-info">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-info"></i>
                                                        </span>
                                                        <span> Info</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-fade fade-in-danger">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                          <i class="cr-icon ik ik-check txt-danger"></i>
                                                        </span>
                                                        <span> Danger</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-fade fade-in-disable">
                                                    <label>
                                                        <input type="checkbox" value="" disabled>
                                                        <span class="cr">
                                                          <i class="cr-icon ik ik-check text-default"></i>
                                                        </span>
                                                        <span>Disabled</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-xl-6 mb-30">
                                                <h4 class="sub-title">Color Checkbox</h4>
                                                <div class="checkbox-color checkbox-default">
                                                    <input id="checkbox12" type="checkbox" checked="">
                                                    <label for="checkbox12">
                                                    Default
                                                    </label>
                                                </div>
                                                <div class="checkbox-color checkbox-primary">
                                                    <input id="checkbox18" type="checkbox" checked="">
                                                    <label for="checkbox18">
                                                    Primary
                                                    </label>
                                                </div>
                                                <div class="checkbox-color checkbox-success">
                                                    <input id="checkbox13" type="checkbox" checked="">
                                                    <label for="checkbox13">
                                                    Success
                                                    </label>
                                                </div>
                                                <div class="checkbox-color checkbox-info">
                                                    <input id="checkbox14" type="checkbox" checked="">
                                                    <label for="checkbox14">
                                                    Info
                                                    </label>
                                                </div>
                                                <div class="checkbox-color checkbox-warning">
                                                    <input id="checkbox15" type="checkbox" checked="">
                                                    <label for="checkbox15">
                                                    Warning
                                                    </label>
                                                </div>
                                                <div class="checkbox-color checkbox-danger">
                                                    <input id="checkbox16" type="checkbox" checked="">
                                                    <label for="checkbox16">
                                                    Danger
                                                    </label>
                                                </div>
                                                <div class="checkbox-color checkbox-default">
                                                    <input id="checkbox17" type="checkbox" disabled="">
                                                    <label for="checkbox17">
                                                    Disabled
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-12 col-xl-6 mb-30">
                                                <h4 class="sub-title">zoom Checkbox</h4>
                                                <div class="checkbox-zoom zoom-default">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-default"></i>
                                                        </span>
                                                        <span>Default</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-zoom zoom-primary">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-primary"></i>
                                                        </span>
                                                        <span>Primary</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-zoom zoom-warning">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-warning"></i>
                                                        </span>
                                                        <span> Warning</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-zoom zoom-success">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-success"></i>
                                                        </span>
                                                        <span>Success</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-zoom zoom-info">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-info"></i>
                                                        </span>
                                                        <span> Info</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-zoom zoom-danger">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check txt-danger"></i>
                                                        </span>
                                                        <span> Danger</span>
                                                    </label>
                                                </div>
                                                <div class="checkbox-zoom zoom-disable">
                                                    <label>
                                                        <input type="checkbox" value="" disabled>
                                                        <span class="cr">
                                                            <i class="cr-icon ik ik-check text-default"></i>
                                                        </span>
                                                        <span>Disabled</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-header"><h3>Input Tag</h3></div>
                                    <div class="card-body">
                                        <form action="">
                                            <div class="form-group">
                                                <label for="input">Type to add a new tag</label>
                                                <input type="text" id="tags" class="form-control" value="London,Canada,Australia,Mexico,India">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-header"><h3>Form Repeater</h3></div>
                                    <div class="card-body">
                                        <p>Click the add button to repeat the form</p>
                                        <form class="form-inline repeater">
                                            <div data-repeater-list="group-a">
                                                <div data-repeater-item class="d-flex mb-2">
                                                    <label class="sr-only" for="inlineFormInputGroup1">Users</label>
                                                    <div class="form-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input type="text" class="form-control" placeholder="Name">
                                                    </div>
                                                    <div class="form-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input type="email" class="form-control" placeholder="Email">
                                                    </div>
                                                    <div class="form-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input type="tel" class="form-control" placeholder="Phone No">
                                                    </div>
                                                    <button data-repeater-delete type="button" class="btn btn-danger btn-icon ml-2" ><i class="ik ik-trash-2"></i></button>
                                                </div>
                                            </div>
                                            <button data-repeater-create type="button" class="btn btn-success btn-icon ml-2 mb-2"><i class="ik ik-plus"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header"><h3>Select 2</h3></div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <form class="sample-form">
                                                    <div class="form-group">
                                                        <label for="">Single select box using select 2 </label>
                                                        <select class="form-control select2">
                                                            <option value="cheese">Cheese</option>
                                                            <option value="tomatoes">Tomatoes</option>
                                                            <option value="mozarella">Mozzarella</option>
                                                            <option value="mushrooms">Mushrooms</option>
                                                            <option value="pepperoni">Pepperoni</option>
                                                            <option value="onions">Onions</option>
                                                        </select>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="col-md-6">
                                                <form class="sample-form">
                                                    <div class="form-group">
                                                        <label for="">Multiple select box using select 2 </label>
                                                        <select class="form-control select2" multiple="multiple">
                                                            <option value="cheese">Cheese</option>
                                                            <option value="tomatoes">Tomatoes</option>
                                                            <option value="mozarella">Mozzarella</option>
                                                            <option value="mushrooms">Mushrooms</option>
                                                            <option value="pepperoni" selected>Pepperoni</option>
                                                            <option value="onions">Onions</option>
                                                        </select>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header"><h3>Summernote Editor</h3></div>
                                    <div class="card-body">
                                        <textarea class="form-control jsp-editor" rows="10"></textarea>
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
        <script src="../node_modules/select2/dist/js/select2.min.js"></script>
        <script src="../node_modules/summernote/dist/summernote-bs4.min.js"></script>
        <script src="../node_modules/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script src="../node_modules/jquery.repeater/jquery.repeater.min.js"></script>
        <script src="../node_modules/mohithg-switchery/dist/switchery.min.js"></script>
        <script src="../dist/js/theme.min.js"></script>
        <script src="../js/form-advanced.js"></script>
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
