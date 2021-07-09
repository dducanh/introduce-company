<%-- 
    Document   : home
    Created on : Jun 29, 2021, 3:01:11 PM
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
        <link rel="stylesheet" href="./assets/css/style.css" />
        <script src="./assets/js/all.min.js"></script>
        <title>Home</title>
    </head>
    <body>
        <div class="app">
            <jsp:include page="header.jsp"/>
            <div class="introduce">
                <div class="introduce-text">
                    <div class="introduce-title">
                        Boost core business to succeed with Digital Transformation
                    </div>
                    <div class="introduce-description">
                        Automation - Managed Service - Data Processing - Annotation -
                        Digital Production
                    </div>
                    <a href="about-us" class="introduce-button">Read more</a>
                </div>
                <img
                    src="./assets/image/image-homepage-1.png"
                    alt=""
                    class="introduce-image"
                    />
            </div>
            <div class="services">
                <div class="services-title">Service Overview</div>
                <div class="services-description">
                    Empower your business model to succeed with Digital Transformation
                    services
                </div>
                <div class="services-item">
                    <img                     
                        src="./assets/image/service-homepage-1.png"
                        alt=""
                        class="services-item__image"
                        />
                    <div class="services-content">
                        <div class="services-content-title">DIGITAL INNOVATION</div>
                        <ul class="services-content-info">
                            <li>Data Processing</li>
                            <li>Data Science</li>
                            <li>Digital Production</li>
                            <li>Managed Service</li>
                            <li>Robotic Process Automation Service</li>
                        </ul>
                    </div>
                </div>
                <div class="services-item">
                    <div class="services-content">
                        <div class="services-content-title">DIGITAL TRANSFORMATION</div>
                        <div class="services-content-info">
                            akaGreen
                            <p>
                                Digital Transformation solution makes practical and effective
                                use of the most emerging technologies to changes business
                                culture and trend by removing paper dependency.
                            </p>
                        </div>
                    </div>
                    <img
                        src="./assets/image/service-homepage-2.png"
                        alt=""
                        class="services-item__image"
                        />
                </div>
            </div>
            <div class="products">
                <div class="products-title">Products</div>

                <div class="products-slider">
                    <div class="slides">
                        <input type="radio" name="radio-btn" id="radio1" checked />
                        <input type="radio" name="radio-btn" id="radio2" />
                        <input type="radio" name="radio-btn" id="radio3" />
                        <div class="slide first">
                            <div class="products-image__text">
                                <div class="products-image__title">akaBot</div>
                                <div class="products-image__des">
                                    A platform provides comprehensive automation and digitization
                                    solutions for businesses, improves productivity and saves
                                    costs
                                </div>
                            </div>
                            <img
                                src="./assets/image/akabot-1.png"
                                alt=""
                                />
                        </div>
                        <div class="slide">
                            <div class="products-image__text">
                                <div class="products-image__title">akaDo</div>
                                <div class="products-image__des">
                                    Data optimization product turns your data into money
                                </div>
                            </div>
                            <img
                                src="./assets/image/akado-1.png"
                                alt=""
                                />
                        </div>
                        <div class="slide">
                            <div class="products-image__text">
                                <div class="products-image__title">akaWork</div>
                                <div class="products-image__des">
                                    DevOps Professional solutions helps your organization achieve
                                    harmony of collaboration among Product Owner, Developers,
                                    Tester, QA and IT Operators.
                                </div>
                            </div>
                            <img
                                src="./assets/image/akawork-1.png"
                                alt=""
                                />
                        </div>
                        <div class="navigation-auto">
                            <div class="auto-btn1"></div>
                            <div class="auto-btn2"></div>
                            <div class="auto-btn3"></div>
                        </div>
                    </div>
                    <div class="navigation-manual">
                        <label for="radio1" class="manual-btn"></label>
                        <label for="radio2" class="manual-btn"></label>
                        <label for="radio3" class="manual-btn"></label>
                    </div>
                </div>
            </div>
            <div class="industries">
                <div class="industries-text">
                    <div class="industries-title">Industries</div>
                    <div class="industries-des">
                        Deliver comprehensive BPO services and solution for businesses in a
                        vast array of industries
                    </div>
                </div>
                <ul class="industries-list">
                    <li class="industry-item">
                        <img
                            src="./assets/image/industry1.png"
                            alt=""
                            class="industry-item__image"
                            />
                        <div class="industry-item__title">AUTOMOTIVE</div>
                        <div class="industry-item__des">
                            Cost-effective services support automobile and car manufacturers,
                            component providers, OEMs, dealerships, rental companies, taxi
                            companies, and so on.
                        </div>
                    </li>
                    <li class="industry-item">
                        <img
                            src="./assets/image/industry2.png"
                            alt=""
                            class="industry-item__image"
                            />
                        <div class="industry-item__title">FINANCE & BANKING</div>
                        <div class="industry-item__des">
                            The concept of digital transformation has made a surge in fintech,
                            give financial organizations new opportunities to grow bigger and
                            develop treasury functions.
                        </div>
                    </li>
                    <li class="industry-item">
                        <img
                            src="./assets/image/industry3.png"
                            alt=""
                            class="industry-item__image"
                            />
                        <div class="industry-item__title">HEALTHCARE & LOGICTICS</div>
                        <div class="industry-item__des">
                            Thanks to digital transformation, healthcare & logistics services
                            are served in a timely manner and make customers remain happy.
                        </div>
                    </li>
                </ul>
            </div>
            <div class="achievements">
                <div class="achievements-title">Achievements</div>
                <div class="achievements-list">
                    <div class="achievement-item">
                        <div class="achievement-item__top">
                            <img
                               src="./assets/image/achie1.png"
                                alt=""
                                class="achievement-item__image"
                                />
                            <div class="achievement-item__word">HEALTHCARE</div>
                        </div>
                        <div class="achievement-item__text">
                            <div class="achievement-item__title">AWS Maintain Services</div>
                            <div class="achievement-item__des">
                                A top car dealer in Japan has the plan to expand 600 stores in
                                Japan and overseas to 1,600 stores by 2018. FPT is in charge of
                                operating their 200 systems on 140 AWS serves.
                            </div>
                        </div>
                        <a href="https://dps-fpt.vn/wp-content/uploads/success-stories/ss-home-01.pdf" class="achievement-item__button">Read More</a>
                    </div>
                    <div class="achievement-item">
                        <div class="achievement-item__top">
                            <img
                                src="./assets/image/achie2.png"
                                alt=""
                                class="achievement-item__image"
                                />
                            <div class="achievement-item__word">BANKING</div>
                        </div>
                        <div class="achievement-item__text">
                            <div class="achievement-item__title">
                                Apply RPA To Manage The Remittance Process
                            </div>
                            <div class="achievement-item__des">
                                The Customer is Hanoi Branch of a mega bank in Japan, with over
                                200 employees and serve more than 10.000 corporators. The
                                remittance process is executed manually and regularly had
                                errors.
                            </div>
                        </div>
                        <a href="https://dps-fpt.vn/wp-content/uploads/success-stories/ss-home-02.pdf" class="achievement-item__button">Read More</a>
                    </div>
                    <div class="achievement-item">
                        <div class="achievement-item__top">
                            <img
                                src="./assets/image/achie3.png"
                                alt=""
                                class="achievement-item__image"
                                />
                            <div class="achievement-item__word">RETAIL</div>
                        </div>
                        <div class="achievement-item__text">
                            <div class="achievement-item__title">Digital 3D Map Editing</div>
                            <div class="achievement-item__des">
                                Customer, currently working in car manufacturer, is in need of
                                creating the features and attribute data necessary for automatic
                                driving and driving support.
                            </div>
                        </div>
                        <a href="https://dps-fpt.vn/wp-content/uploads/success-stories/ss-home-03.pdf" class="achievement-item__button">Read More</a>
                    </div>
                </div>
            </div>
            <div class="activities">
                <div class="activities-title">DPS News And Events</div>
                <div class="activities-list">
                    <div class="activity-item">
                        <img
                            src="./assets/image/news1.jpg"
                            alt=""
                            class="activity-item__image image_big"
                            />
                        <a href="#" class="activity-item__title">
                            More than 100 large enterprises trusted DPS
                        </a>
                        <div class="activity-item__des">
                            For many years, FPT Software’s BPO services have been used by
                            businesses to save operating costs, focus resources on core
                            business areas.
                        </div>
                        <a href="#" class="activity-item__button">Read more...</a>
                    </div>
                    <div class="activity-item">
                        <img
                            src="./assets/image/news2.jpg"
                            alt=""
                            class="activity-item__image"
                            />
                        <a href="#" class="activity-item__title">
                            FPT DPS implemented RPA for Indonesia customers
                        </a>
                        <div class="activity-item__des">
                            After starting contact and working since February, FPT DPS and the
                            Indonesia customer specializing in automotive parts in Indonesia
                            decided to go to cooperation in mid-May.
                        </div>
                        <a href="#" class="activity-item__button">Read more...</a>
                    </div>
                    <div class="activity-item">
                        <img
                            src="./assets/image/news3.jpg"
                            alt=""
                            class="activity-item__image"
                            />
                        <a href="#" class="activity-item__title">
                            Digital Processing Service (DPS) is the partner with top Fortune
                            Global 500
                        </a>
                        <div class="activity-item__des">
                            According to statistics from FPT Corporation, Digital Processing
                            Services are being trusted by more than 100 businesses. More than
                            30% of them are companies on the Fortune Global 500 list
                        </div>
                        <a href="#" class="activity-item__button">Read more...</a>
                    </div>
                    <div class="activity-item">
                        <img
                            src="./assets/image/news4.jpg"
                            alt=""
                            class="activity-item__image"
                            />
                        <a href="#" class="activity-item__title">
                            akaBot continued impressing audiences at Da Nang Fintech day 2019
                        </a>
                        <div class="activity-item__des">
                            Mr. Bui Dinh Giap, the product owner of the product akaBot,
                            attended Fintech 2019 in Da Nang as one of the main speakers.
                        </div>
                        <a href="#" class="activity-item__button">Read more...</a>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div> 
        <script src="./assets/js/redirect.js"></script>
    </body>
</html>
