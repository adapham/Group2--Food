<%-- 
    Document   : about
    Created on : May 28, 2022, 2:06:13 PM
    Author     : KhacBao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/main.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navigation-->
        <%@include file="component/NavbarHome.jsp" %>
        <!-- Header-->
        <header class="bg-dark py-5">
            <!-- about 1 -->
            <div class="container px-4 px-lg-5 my-5">
                <div class="row justify-content-md-center about-first">
                    <!-- Image About Left-->
                    <div class="left col-xs-6 col-md-6 col-lg-6" >
                        <img src="assets/Image about.png" alt="">
                    </div>
                    <!-- Text About Right -->
                    <div class="right col-xs-6 col-md-6 col-lg-6">
                        <h2>We are Foodie</h2>
                        <p>
                            Food, also called food, is any article, consisting mainly of substances: starch, fat, protein, minerals, or water, which can be eaten or drunk by humans or animals, with the basic purpose of obtaining nutrients to nourish the body or for hobbies
                        </p>
                        </br>
                        <p>
                            The interior is very clean and brightly lit and shiny to the point of being almost formal. Our service is quick, efficient and courteous. Come or call today and experience the wonderful taste of Cuisine. The sauce is delicious, the crispy crust is mixed together to create a very special flavor.
                        </p>
                    </div>
                </div>
            </div>
        </header>
        <!-- about 2 -->
        <section class="">
            <div class="about-second">
                <div class="row justify-content-md-center ">
                    <!-- Image About Left-->
                    <div class="left col-xs-6 col-md-6 col-lg-6" >
                        <img src="assets/Cheff bg.png" alt="">
                    </div>
                    <!-- Text About Right -->
                    <div class="right col-xs-6 col-md-6 col-lg-6">
                        <h2>A Few Words About QuickFood</h2>
                        <p>
                            Food, also called food, is any article, consisting mainly of substances: starch, fat, protein, minerals, or water, which can be eaten or drunk by humans or animals, with the basic purpose of obtaining nutrients to nourish the body or for hobbies
                        </p>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-4 text-center">
                                <strong>20</strong>
                                <br>
                                <span>BURGERS SOLD</span>
                            </div>
                            <div class="col-md-4 text-center">
                                <strong>1300</strong>
                                <br>
                                <span>PIZZAS MADE</span>
                            </div>
                            <div class="col-md-4 text-center">
                                <strong>1000+</strong>
                                <br>
                                <span>CLIENTS EVERYDAY</span>
                            </div>
                        </div>
                        <!-- button menu -->
                        <button type="button" class="btn btn-secondary btn-lg">See out menu</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- About 3: Our Story -->
        <!-- Section-->
        <section class="our-story py-5">
            <h1 class="text-center">Our Story</h1>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="time-line-date">2018</div>
                    <div class="col-sm-5 left">
                        <h5>Idea</h5>
                        <p class="body-text">It all started from a single idea. We wanted to create a restaurant that would offer its customers their favorite fast food dishes - burgers, pizzas, and more.</p>
                    </div>
                    <div class="col-sm-5 right">
                        <img src="assets/our story 1.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="time-line-date">2020</div>
                    <div class="col-sm-5 right" style="border-left: none;border-right: 1px solid #ccc;">
                        <img src="assets/our story 2.jpg" alt="" >
                    </div>
                    <div class="col-sm-5 left">
                        <h5>Opening</h5>
                        <p class="body-text">
                            After making necessary preparations, completing our staff with experienced chefs and waiters, we were ready to meet new guests and visitors.
                        </p>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="time-line-date">2022</div>
                    <div class="col-sm-5 left">
                        <h5>Today</h5>
                        <p class="body-text">
                            We are devoted to our customers and to buisness of our life - offering fast food dishes. And that’s why today we’re recognized as #1 Fast Food Chain in US.
                        </p>
                    </div>
                    <div class="col-sm-5 right">
                        <img src="assets/our story 3.jpg" alt="" style="width: 90%;">
                    </div>
                </div>
            </div>
        </section>
        <!-- Section About our team -->
        <section class="our-team py-5">
            <h1 class="text-center">We're Super <br><span>Professional At Our Skills</span></h1>
            <div class="title">
                QuickFood’s team is what makes marks us out from other fast food restaurants. Everyone of us,
                from founders to waiters, is a part of a friendly family, who always welcomes new members!
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <img class="img-fluid" src="assets/member2.jpg" alt="">
                            <div class="team-text">
                                <div class="team-title">
                                    <h5>Full Name</h5>
                                    <span>Designation</span>
                                </div>
                                <div class="team-social">
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-facebook"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-telegram"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-instagram"></i>
                                      </a>
                                </div>
                            </div>
                        </div>
                  </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <img class="img-fluid" src="assets/member2.jpg" alt="">
                            <div class="team-text">
                                <div class="team-title">
                                    <h5>Full Name</h5>
                                    <span>Designation</span>
                                </div>
                                <div class="team-social">
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-facebook"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-telegram"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-instagram"></i>
                                      </a>
                                </div>
                            </div>
                        </div>
                  </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <img class="img-fluid" src="assets/member2.jpg" alt="">
                            <div class="team-text">
                                <div class="team-title">
                                    <h5>Full Name</h5>
                                    <span>Designation</span>
                                </div>
                                <div class="team-social">
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-facebook"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-telegram"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-instagram"></i>
                                      </a>
                                </div>
                            </div>
                        </div>
                  </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <img class="img-fluid" src="assets/member2.jpg" alt="">
                            <div class="team-text">
                                <div class="team-title">
                                    <h5>Full Name</h5>
                                    <span>Designation</span>
                                </div>
                                <div class="team-social">
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-facebook"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-telegram"></i>
                                      </a>
                                      <a class="btn" href="https://www.facebook.com/Dangnguyentattttooo">
                                        <i class="bi bi-instagram"></i>
                                      </a>
                                </div>
                            </div>
                        </div>
                  </div>
                    
                </div>
              </div>
        </section>
        <!-- Footer-->
        <%@include file="component/FooterHome.jsp" %>
    </body>
</html>


