<%-- 
    Document   : about
    Created on : Jun 29, 2021, 3:29:00 PM
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
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet" />
  <link rel="icon"
    href="https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/FPT_logo_2010.svg/1200px-FPT_logo_2010.svg.png"
    type="image/gif" sizes="16x16" />
  <link rel="stylesheet" href="./assets/css/reset.css" />
  <link rel="stylesheet" href="./assets/css/about.css" />
  <script src="./assets/js/all.min.js"></script>
  <title>About Us</title>
</head>

<body>
  <div class="app">
      <jsp:include page="header.jsp"/>

    <div class="header">
      <div class="header-title">About Us</div>
      <div class="header-description">
        Established as one of FPT Software subsidiaries, FPT Digital
        Processing Services (DPS) has the mission of delivering comprehensive
        services to support customers focus resources on core business
        development and saving effort. Our service various high-value
        industries such as: E-commerce, Manufacturing, Retail, Accounting,
        Used Car Dealer, Banking and Finance, Insurance… FPT DPS has
        experience of working in business processing outsourcing (BPO) all
        over Vietnam and Asia since 2007. We liberated more than 50 clients in
        the regions from manual errors and physical management of business
        processes.
      </div>
    </div>

    <div class="information">
      <div class="left">
        <img
          src="./assets/image/about1.png"
          alt="" class="left-image" />
      </div>
      <div class="right">
        <div class="information-list">
          <div class="information-list__item">
            <div class="information-item__title">
              FPT - Leading Technology And It Services Group In Vietnam
            </div>
            <div class="information-item__des">
              FPT DPS is part of FPT Corporation– the global leading
              technology and IT services group headquartered in Vietnam with
              nearly US$2 billion in revenue and 32,000 employees. Our
              delivery markets present accross the world: United States,
              Japan, Europe, Australia, Vietnam, ASEAN and the Asia Pacific.
            </div>
          </div>
          <div class="information-list__item">
            <div class="information-item__title">Our Resources</div>
            <div class="information-item__des">
              FPT DPS has an qualified and stable human resource with over
              1500 staffs globally, average age of 24 years old, proficiency
              in English and Japanese, fluent in daily communication. We have
              branches in every economic development centres in Vietnam:
              Hanoi, Quy Nhon, Can Tho, and Headquarters in Danang.
            </div>
          </div>
          <div class="information-list__item">
            <a href="https://www.fpt-software.com/about-fpt-software/">About FPT Software</a>
          </div>
        </div>
      </div>
    </div>

    <div class="customer">
      <div class="customer-title">
        Our Customers Come From All Corners Of The Globe
      </div>
      <img
        src="./assets/image/about2.png"
        alt="" class="customer-image" />
    </div>

    <div class="contact">
      <div class="container">
        <form action="" method="POST" id="form-contact">
          <div class="contact-title">Contact Us</div>
          <div class="contact-row">
            <label class="title-input">Your Name<span>*</span></label>
            <input class="row-input" type="text" id="name" name="name" />
            <span class="form-message"></span>
          </div>
          <div class="contact-row">
            <label class="title-input">Your Email<span>*</span></label>
            <input class="row-input" type="text" id="email" name="email" />
            <span class="form-message"></span>
          </div>
          <div class="contact-row">
            <label class="title-input">Subject<span>*</span></label>
            <input class="row-input" type="text" id="subject" name="subject" />
            <span class="form-message"></span>
          </div>
          <div class="contact-row">
            <label class="title-input">Your Message<span>*</span></label>
            <textarea class="row-input big-input" name="message" id="message" cols="30" rows="10"></textarea>
            <span class="form-message"></span>
          </div>
          <div class="contact-button">
            <button type="submit">Send</button>
          </div>
        </form>
      </div>
    </div>
    <jsp:include page="footer.jsp"/>
  </div>
  <script src="./assets/js/validator.js"></script>
  <script>
    Validator({
      form: "#form-contact",
      errorSelector: ".form-message",
      rules: [
        Validator.isRequired("#name"),
        Validator.isRequired("#subject"),
        Validator.isRequired("#message"),
        Validator.isEmail("#email"),
      ]
    });
  </script>
</body>

</html>
