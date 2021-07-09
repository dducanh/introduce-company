<%-- 
    Document   : service
    Created on : Jun 29, 2021, 3:41:04 PM
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
        <link rel="stylesheet" href="./assets/css/service.css">
       
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>

    <body>
        <!-- Header -->

        <jsp:include page="header.jsp"/>
        <!--  end Header -->
        <div class="head">
            <div class="headContent">
                <div class="headText">
                    <h1>${detailService.nameService}</h1>
                    <p>${detailService.description}</p>
                </div>
            </div>
            <div class="backgroundimage">
                <img src="${detailService.image}" alt="">
            </div>
        </div>

        <div class="bot">
            <div class="shortDes">
                  <c:forEach var="top3" items="${serviceDetailTop3}">
                     <div class="textShortDes">
                    <h2>${top3.serviceDetail}</h2>
<!--                    <p>${top3.description} </p>-->
                  </div> 
                </c:forEach>
            
                
<!--                <div class="textShortDes">
                    <h2>Deliverables</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing </p>
                </div>
                <div class="textShortDes">
                    <h2>Deliverables</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing </p>
                </div>-->

            </div>

            <div class="topimage">
                <img src="./assets/image/dataprocessinggdpr-remove.png" alt="">
            </div>

            <div class="deliverables">
                <h2>${detailService.nameService}</h2>
                <p>${detailService.description}</p>
            </div>


            <div class="content">
                <c:forEach var="list" items="${listServiceDetails}">
                <div class="service">
                    <div class="image">
                        <img src="${list.image}" />
                    </div>
                    <div class="text">
                        <div class="title">
                            <h3>${list.serviceDetail}</h3>
                        </div>
                        <div class="desciption">
                            <p>${list.description}</p>
                        </div>

                    </div>
                </div>
                </c:forEach>
             
                <div class="service">
                    <div class="image">
                        <img src="./assets/image/Enhance-for-different-domains-and-purposes-360x240.png" />
                    </div>
                    <div class="text">
                        <div class="title">
                            <h3>Digital Formats</h3>
                        </div>
                        <div class="desciption">
                            <p>We maximize the ability to handle large volumes of data in a relatively short period of time. Based on the fact that it depends on various aspects of the flow and the environment, FPT DPS enables optimization by precise job design and careful task management as well as several quality control gates by checking tools.</p>
                        </div>

                    </div>
                </div>
            </div>
            <div class="slideShow">

            </div>
        </div>
        <!-- Footer -->
        <jsp:include page="footer.jsp"/>
        <!-- end Footer -->
    </body>

</html>
