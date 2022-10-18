<%-- 
    Document   : rateCSS
    Created on : Oct 10, 2022, 9:48:02 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <style>
        .card-inner{
            margin-left: 4rem;
        }
        .glyphicon {
            margin-right:5px;
        }
        .rating .glyphicon {
            font-size: 22px;
        }
        .rating-num {
            margin-top:0px;
            font-size: 54px;
        }
        .progress {
            margin-bottom: 5px;
        }
        .progress-bar {
            text-align: left;
        }
        .rating-desc .col-md-3 {
            padding-right: 0px;
        }
        .sr-only {
            margin-left: 5px;
            overflow: visible;
            clip: auto;
        }
        .rating {
            display: flex;
            flex-direction: row-reverse;
            /*justify-content: center;*/
        }

        .rating > input{
            display:none;
        }

        .rating > label {
/*            position: relative;*/
            width: 1em;
            font-size: 2vw;
            color: #FFD600;
            cursor: pointer;
        }
        .rating > label::before{
            content: "\2605";
            position: absolute;
            opacity: 0;
        }
        .rating > label:hover:before,
        .rating > label:hover ~ label:before {
            opacity: 1 !important;
        }

        .rating > input:checked ~ label:before{
            opacity:1;
        }

        .rating:hover > input:checked ~ label:before{
            opacity: 0.4;
        }

    </style>


</head>

