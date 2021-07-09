<%-- 
    Document   : product
    Created on : Jun 29, 2021, 3:23:16 PM
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
    <link
      rel="icon"
      href="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/FPT_logo_2010.svg/1200px-FPT_logo_2010.svg.png"
      type="image/gif"
      sizes="16x16"
    />
    <link rel="stylesheet" href="./assets/css/reset.css" />
    <link rel="stylesheet" href="./assets/css/product.css" />
    <script src="./assets/js/all.min.js"></script>
    <title>Product</title>
  </head>

  <body>
    <div class="app">
        <jsp:include page="header.jsp"/>
      <div class="product-list">
        <div class="product-item">
          <div class="item-header">
            <div class="item-header__title">akaBot</div>
            <div class="item-header__desc">A comprehensive RPA Solution</div>
          </div>
          <div class="item-content">
            <div class="item-content__text">
              <div class="item-content__title">What is akaBot?</div>
              <div class="item-content__desc">
                <span>akaBot is a comprehensive RPA solution </span>that helps
                businesses overcome scalability challenges with full services,
                mini solutions and competitive licensing costs.
              </div>
            </div>
            <img
              src="./assets/image/akabot-bg.jpg"
              alt=""
              class="item-content__image"
            />
          </div>
          <div class="item-feature">
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/img-feat1.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">akaBot Studio</div>
                <div class="element-right__desc">
                  Easy & Friendly User Interface
                </div>
              </div>
            </div>
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/img-feat2.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">akaBot Center</div>
                <div class="element-right__desc">
                  Comprehensive Control Room
                </div>
              </div>
            </div>
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/img-feat3.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">akaBot Agent</div>
                <div class="element-right__desc">Your Robotic Employees</div>
              </div>
            </div>
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/img-feat4.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">akaBot Vision</div>
                <div class="element-right__desc">OCR technology</div>
              </div>
            </div>
          </div>
          <div class="btn-class">
            <a href="https://akabot.com/" class="button__learn-more"
            >Learn more about akaBot</a
          >
          </div>
        </div>
        <div class="product-item">
          <div class="item-header">
            <div class="item-header__title">akaWork</div>
            <div class="item-header__desc">Keep your DevOps team on point</div>
          </div>
          <div class="item-content">
            <div class="item-content__text">
              <div class="item-content__title">What is akaWork?</div>
              <div class="item-content__desc">
                <span>akaWORK is DevOps platform </span>that provides Enterprise
                delivery management solution relates DevOps Utility, ALM and
                Quality Center solution to help product delivers the speed,
                agility, security and insights necessary to succeed in an
                evolving marketplace.
              </div>
            </div>
            <img
              src="./assets/image/akawork-bg.png"
              alt=""
              class="item-content__image"
            />
          </div>
          <div class="item-feature">
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/data1.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">DevOps intelligence</div>
                <div class="element-right__desc">
                  easily measure and gain insights
                </div>
              </div>
            </div>
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/data2.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">Comprehensive</div>
                <div class="element-right__desc">
                  DevOps toolchain & utility templates
                </div>
              </div>
            </div>
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/data3.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">Ready integration</div>
                <div class="element-right__desc">with leading CI/CD tools</div>
              </div>
            </div>
            <div class="item-feature__element">
              <div class="element-left">
                <img
                  src="./assets/image/data4.png"
                  alt=""
                  class="element-left__image"
                />
              </div>
              <div class="element-right">
                <div class="element-right__title">akaBot Vision</div>
                <div class="element-right__desc">OCR technology</div>
              </div>
            </div>
          </div>
          <div class="btn-class">
            <a href="https://www.akawork.io/#/" class="button__learn-more"
            >Learn more about akawork</a
          >
          </div>
        </div>
      </div>
        <jsp:include page="footer.jsp"/>
    </div>
  </body>
</html>

