<%-- 
    Document   : header2
    Created on : Sep 29, 2022, 5:28:30 PM
    Author     : Admin
--%>

<head>
    <meta charset="utf-8">
    <title>Educenter</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- ** Plugins Needed for the Project ** -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/template1/plugins/bootstrap/bootstrap.min.css">
    <!-- slick slider -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/template1/plugins/slick/slick.css">
    <!-- themefy-icon -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/template1/plugins/themify-icons/themify-icons.css">
    <!-- animation css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/template1/plugins/animate/animate.css">
    <!-- aos -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/template1/plugins/aos/aos.css">
    <!-- venobox popup -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/template1/plugins/venobox/venobox.css">

    <!-- Main Stylesheet -->
    <link href="<%=request.getContextPath()%>/template1/css/style.css" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/template1/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<%=request.getContextPath()%>/template1/images/favicon.ico" type="image/x-icon">
    <style>
        ul{
            padding: 0;
            margin: 0;
        }
        a span{
            font-size: 12px;
        }
        .navigation{
            background-color: #ffbc3b;
        }
        .form-control {
            background-color: transparent;
            border-top: 0;
            border-right: 0;
            border-left: 0;
            border-radius: 0;
            &:focus {
                border-color: #111;
            }
        }
        h2{
            text-align: center;
            margin-bottom: 45px;
        }
        .text-align-center{
            text-align: center;
        }
        table{
            
            
        }
        img{
            object-fit: cover;
        }
        
    </style>
</head>