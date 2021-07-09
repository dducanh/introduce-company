<%-- 
    Document   : rightOfNews
    Created on : Jun 29, 2021, 4:23:13 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/rightOfNewsStyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
            <div class="right">
            <div class="newst">
                <div class="titleNews">
                    <h2>News</h2>
                </div>
                <div class="contentNews">

                    <div class="imageContenNews">
                        <h4>
                            <a href="detailController?id=4">${top2News.title}</a>
                        </h4>
                        <img src="${top2News.image}" />
                                                <div class="shortDesContentNews">
                            <span>${top2News.shortDescription}</span>
                            <a href="detailController?id=4">.....read more</a>
                        </div>
                    </div>
                </div>
                <div class="newst">
                    <div class="titleNews">
                        Search
                    </div>
                    <form action="searchNewsController" method="post">
                        <input class="searchBox" type="text" name="txtSearch" size="30" required>
                        <input class="searchButton" type="submit" name="btnGo" value="Go">
                    </form>
                </div>
                <div class="newst">
                    <div class="titleNews">
                        <span>Topic </span><br>
                    </div>

                    <div class="lastArticles">
                        <c:forEach var="i" items="${listTopic}">
                        <a href="searchByTopicController?id=${i.topicID}">${i.topicName}</a>
                        </c:forEach>
                 
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
