<%-- 
    Document   : footer
    Created on : Jun 29, 2021, 3:09:14 PM
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

        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap"
            rel="stylesheet"
            />
        <link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/FPT_logo_2010.svg/1200px-FPT_logo_2010.svg.png" type="image/gif" sizes="16x16">
        <link rel="stylesheet" href="./assets/css/reset.css" />
        <link rel="stylesheet" href="./assets/css/footer.css" />
        <link rel="stylesheet" href="./assets/css/style.css" />
        <script src="./assets/js/all.min.js"></script>
        <title>Footer</title>
    </head>
    <body>
        <div class="footer">
            <div class="footer-list">
                <div class="footer-item">
                    <div class="footer-item__title">
                        DIGITAL INNOVATION
                    </div>
                    <ul class="footer-item__content"> 
                        <c:forEach items="${service}" var="i">
                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
<!--                            <a href="#">Data Processing</a>-->
                             
                            <a href="serviceController?id=${i.id}">${i.nameService}</a>
                        </c:forEach>
                        </li>
<!--                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
                            <a href="#">Data Science</a>
                        </li>
                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
                            <a href="#">Digital Production</a>
                        </li>
                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
                            <a href="#">Managed Service</a>
                        </li>
                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
                            <a href="#">Robotic Process Automation</a>
                        </li>-->
                    </ul>
                </div>

                <div class="footer-item">
                    <div class="footer-item__title">
                        DIGITAL TRANSFORMATION
                    </div>
                    <ul class="footer-item__content">
                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
                            <a href="#">akaBot</a>
                        </li>
                        <li class="footer-item__choice">
                            <i class="fas fa-angle-right icon-right"></i>
                            <a href="#">akaWork</a>
                        </li>
                    </ul>
                </div>
                <div class="footer-item">
                    <div class="footer-item__title">
                        FPT DIGITAL PROCESSING SERVICE
                    </div>
                    <ul class="footer-item__content">
                        <li class="footer-item__choice address">
                            <span>Address</span>: No.1 Road, FPT Building, An Don Industrial Park,
                            Ngo Quyen Str., An Hai Bac Ward, Son Tra Dist, Danang, Vietnam
                        </li>    
                        <li class="footer-item__choice icon-list">
                            <div class="icon_link email">
                                <i class="far fa-envelope icon "></i>
                            </div>
                            <div class="icon_link facebook">
                                <i class="fab fa-facebook-f icon "></i>
                            </div>
                            <div class="icon_link linkedin">
                                <i class="fab fa-linkedin-in icon "></i>
                            </div>
                        </li>      
                    </ul>
                </div>
            </div>
        </div>
        <div class="copyright">
            Copyright © 2021 by AnhDD
        </div>  
        <script src="./assets/js/redirect.js"></script>
    </body>
</html>
