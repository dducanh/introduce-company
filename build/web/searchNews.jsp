<%-- 
    Document   : searchNews
    Created on : Jul 2, 2021, 9:44:10 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
        <link rel="stylesheet" href="./assets/css/news.css">
        <link rel="stylesheet" href="./assets/css/detailNews.css">
        <link rel="stylesheet" href="./assets/css/reset.css">
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
              
                <div class="least">
                    <h2>Least</h2>
                </div>
                <c:forEach var="list" items="${list}">
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
                         <c:if test="${maxPage < 1}">
                            <h3>Not Found !!</h3>
                        </c:if>
                        <c:if test="${maxPage > 1}">
                            <c:forEach begin="1" end="${maxPage}" var="i">
                                <a class="${i==index?"active":""}" href="searchNewsController?index=${i}&txtSearch=${txt}">${i}</a>
                            </c:forEach>
                        </c:if>
                    </div>
            </div>
            <jsp:include page="rightOfNews.jsp"/>
        </div>
        
          <!-- Footer -->
        <jsp:include page="footer.jsp"/>
        <!-- end Footer -->
    </body>
</html>
