<%-- 
    Document   : detailNews
    Created on : Jun 29, 2021, 3:32:34 PM
    Author     : Mr Duc Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./assets/css/reset.css">
        <link rel="stylesheet" href="./assets/css/detailNews.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- Header -->

        <jsp:include page="header.jsp"/>
        <!--  end Header -->
        <div class="head">
            <div class="headContent">
                <div class="headText">
                    <h1>DPS News And Events</h1>
                    <p></p>
                </div>
            </div>
            <div class="backgroundimage">
                <img src="./assets/image/64410046_702382453542169_2624887452136898560_n-1024x568.png" alt="">
            </div>
        </div>

        <div class="bot">

            <div class="content">
                <div class="news">
                    <div class="title">
                        <h2>${detailNews.title}</h2>
                    </div>
                    <div class="NewsContent">

                        <div class="shortDesciption">
                            <p>${detailNews.shortDescription}
                            </p>
                        </div>
                        <div class="imageNews">
                            <img src="${detailNews.image}" alt="">
                        </div>
                        <div class="detailDesciption">
                            <p>${detailNews.detailDescription}
                            </p>
                        </div>


                    </div>

                </div>

            </div>
            <jsp:include page="rightOfNews.jsp"/>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>