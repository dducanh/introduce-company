<%-- 
    Document   : header
    Created on : Jun 29, 2021, 3:04:57 PM
    Author     : Mr Duc Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap"
            rel="stylesheet"
            />
        <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/FPT_logo_2010.svg/1200px-FPT_logo_2010.svg.png" type="image/gif" sizes="16x16">
        <link rel="stylesheet" href="./assets/css/reset.css" />
        <link rel="stylesheet" href="./assets/css/header.css" />
        <link rel="stylesheet" href="./assets/css/style.css" />
        <script src="./assets/js/all.min.js"></script>
        <title>Header</title>
    </head>
    <body>
      <div class="header-navbar">
            <img
                src="https://www.dps-fpt.vn/wp-content/uploads/2019/05/logo_ngang_transparent.png"
                alt=""
                class="header-navbar__logo"
                />
            <ul class="header-navbar__menu">
                <li class="header-navbar__menu__item"><a href="home">Home</a></li>
                <li class="header-navbar__menu__item service-item">
                    <a href="#">Service</a>
                    <ul class="subnav">
                        <c:forEach items="${service}" var="i">
                            <li class="subnav-item"><a href="serviceController?id=${i.id}">${i.nameService}</a></li>
                        </c:forEach>
<!--                        <li class="subnav-item"><a href="serviceController?id=1">Data Processing</a></li>
                        <li class="subnav-item"><a href="service.jsp">Data Science</a></li>
                        <li class="subnav-item"><a href="service.jsp">Digital Production</a></li>
                        <li class="subnav-item"><a href="service.jsp">Managed Service</a></li>
                        <li class="subnav-item"><a href="service.jsp">Robotic Process Automation</a></li>-->
                    </ul>
                </li>
                <li class="header-navbar__menu__item"><a href="newsController">News & Activity</a></li>
                <li class="header-navbar__menu__item"><a href="products">Product</a></li>
                <li class="header-navbar__menu__item"><a href="about-us">About us</a></li>
            </ul>
        </div>
        <script src="./assets/js/redirect.js"></script>
    </body>
</html>
