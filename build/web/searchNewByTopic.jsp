<%-- 
    Document   : searchNewByTopic
    Created on : Jul 3, 2021, 6:01:11 AM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="assets/css/detailNews.css">
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/news.css">
        
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
        <title>JSP Page</title>
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
              
                <div class="least">
                    <h2>Least</h2>
                </div>
                <c:forEach var="list" items="${listMews}">
                    <div class="service">
                        <div class="image">
                            <a href="detailController?id=${list.newsID}">
                                <img src="${list.image}" />
                            </a>
                        </div>
                        <div class="text">
                            <div class="title">
                                <h3><a href="detailController?id=${list.newsID}">${list.title}</a></h3>
                            </div>
                            <div class="desciption">
                                <p>${list.shortDescription}</p>
                                <a href="detailController?id=${list.newsID}">Read more...</a>
                            </div>

                        </div>
                    </div>
                </c:forEach>
        
            
                 <div class="paging">
                    <c:forEach begin="1" end="${maxPage}" var="i">
                        <a class="${i==pageIndex?"active":""}" href="searchByTopicController?txtPage=${i}&id=${topicID}">${i}</a>
                    </c:forEach>
                </div>
            </div>
            <jsp:include page="rightOfNews.jsp"/>
        </div>
        
          <!-- Footer -->
        <jsp:include page="footer.jsp"/>
        <!-- end Footer -->
    </body>
</html>
