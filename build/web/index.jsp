<%-- 
    Document   : index
    Created on : Sep 9, 2023, 9:55:17 AM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="js/bootstrap.bundle.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11/lib/typed.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Farmer Merchant Integration</title>
    </head>
    <body style="overflow-x: hidden;">
        <div class="row">  
            <jsp:include page="header.jsp" />
            <div class="row"style="height: 400px;background-image:url('images/mainimg.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center; background-color: grey; background-blend-mode:multiply; align-items: center;width:100%;">
                <div>
                    <h2  id="typed-text"  align="center" style="font-family: 'Russo One', sans-serif; color: #FF8400;"></h2>
                </div>
                <h2 align="center" style="font-family: 'Russo One', sans-serif; color:white;margin-top:-12vw;">"Your trusted partner in cold storage solutions."</h2>
                <a href="register.jsp" align="center" style="margin-top:-12vw;"><button class="btn btn-light">Register Now</button></a>
            </div>

            <div style="background-color: #73bf44; height: 2px;width:100%;margin-top: 5px;"></div>

            <div class="container-fluid">
                <h1 align="center" style="margin-top:3vw;margin-bottom: 3vw;">Why Choose us ?</h1>
                <div class="row" style="margin-bottom: 3vw;">
                    <div class="col-sm-3" align="center">
                        <div style="border:2px solid #73bf44; border-radius:8vw; height:13vw; width:13vw; display: table-cell;vertical-align: middle;">
                            <img src="images/24-7.png"  alt="..." height="80vw" width="80vw" style="margin: auto;">
                            <div style="margin-top: 1vw;">
                                <h5>24x7 Customer Support</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3" align="center">
                        <div style="border:2px solid #73bf44; border-radius:8vw; height:13vw; width:13vw; display: table-cell;vertical-align: middle;">
                            <img src="images/snap.png"  alt="..." height="80vw" width="80vw" style="margin: auto;">
                            <div style="margin-top: 1vw;">
                                <h5>Easy Booking</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3" align="center">
                        <div style="border:2px solid #73bf44; border-radius:8vw; height:13vw; width:13vw; display: table-cell;vertical-align: middle;">
                            <img src="images/shield.png"  alt="..." height="80vw" width="80vw" style="margin: auto;">
                            <div style="margin-top: 1vw;">
                                <h5>Fully Secure</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3" align="center">
                        <div style="border:2px solid #73bf44; border-radius:8vw; height:13vw; width:13vw; display: table-cell;vertical-align: middle;">
                            <img src="images/best-price.png"  alt="..." height="80vw" width="80vw" style="margin: auto;">
                            <div style="margin-top: 1vw;">
                                <h5>Affordable prices</h5>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="background-color: #73bf44; height: 2px;width:100%;margin-bottom: 5px;"></div>

                <div class="row" id="about">
                    <div class="col-sm-8" style="min-height: 450px; background-color: black;">
                        <h1 style="color: #73bf44; margin-top:2vw;" align="center">About us</h1>
                        <div style="width:50%;margin:auto; text-align: justify;">
                            <h5 style="color:white; line-height: 1.5;">
                                Farmer Merchant Integration is a platform which helps farmers to make bookings in cold stores so that they can store crops and thus can negotiate better prices for their crops, as they will be able to supply when it is not in season.Properly stored fruits and vegetables can retain their nutritional value and taste for longer periods of time, which can increase the appeal of the products to consumers. This can help farmers to command higher prices for their produce, which in turn can improve their livelihoods.
                            </h5>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 450px; background-color: black;">
                        <div>
                            <img src="images/farmer.jpg" class="float-end" style="height:15vw;width:20vw;"/>
                        </div>
                        <div>
                            <img src="images/farmer2.jpg" class="float-start" style="height:15vw;width:20vw;"/>
                        </div>
                    </div>
                </div>

                <div style="background-color: #73bf44; height: 2px;width:100%;margin: 5px 0px 5px 0px;"></div>

                <div class="container-fluid">
                    <h1 align="center" style="margin-top:3vw;margin-bottom: 3vw; color:#73bf44;">Our Services</h1>
                    <h5 align="center" style="margin-top:3vw;margin-bottom: 3vw;">We provide facilities to store the various commodities such as</h5>
                    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/apples.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;"/>
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Apples</b></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/carrot.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Carrot</b></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/grapes.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Grapes</b></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/mango.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Mango</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/mushroom.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Mushroom</b></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/oranges.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Oranges</b></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/cucumber.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Cucumber</b></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="images/potato.jpg" class="card-img-top" alt="..." style=" height:13vw ;width:100%;">
                                            <div class="card-body" align="center">
                                                <p class="card-text"><b>Potato</b></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>


                    <div class="container-fluid">
                        <h1 align="center" style="margin-top:3vw;margin-bottom: 3vw; color:#73bf44;">We are located at</h1>
                        <div class="row" style="margin-bottom: 3vw; background-color: #FFFBF5;">
                            <div class="col-sm-7" style="height: 300px;text-align: justify;">
                                <div style="width:50%; line-height: 1.7;margin: 4vw auto auto auto;">
                                    We are located in Barabanki aimed to provide you the best facilities, security and reliability. The cold storage is equipped with best tools and staff which maintains precise temperature levels to safeguard perishable items. Each and every section of cold storage is under the CCTV surveillance. So what are you waiting for ? Book your slot now !
                                </div>
                            </div>
                            <div class="col-sm-5" align="center" style="height: 300px; border:2px solid #73bf44;">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.6727689046593!2d81.15544337534047!3d26.913878476646424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39995fe6ab9455bf%3A0x9fffe664cfdd0e20!2sCold%20Storage!5e0!3m2!1sen!2sin!4v1695058106390!5m2!1sen!2sin" width="100%" height="295" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>

                        <div class="container get-started" style="height:300px;">
                            <div class="row">
                                <div class="col" align="center" style="vertical-align: central; margin-top: 5vw;">
                                    <img src="images/img.png" alt="" width="150px" height="150px" />
                                </div>
                                <div class="col">
                                    <div class="container" style="margin-top: 5vw;">
                                        <h3 style="color: #39a2db;">Get Started with FMI</h3>
                                        <ol>
                                            <li>Select your cold storage</li>
                                            <li>Register yourself</li>
                                            <li>Checkout</li>
                                        </ol>
                                        <button class="btn btn-primary">Explore Now</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row"style="height:100px;">
                            <div class="col-sm-2">
                                <img src="images/AKAM_logo.jpg" width="width" height="70px" alt="alt"/>
                            </div>
                            <div class="col-sm-2">
                                <img src="images/G20New.jpg" width="width" height="70px" alt="alt"/>
                            </div>
                            <div class="col-sm-2">
                                <img src="images/Yoga_India_new.jpg" width="width" height="70px" alt="alt"/>
                            </div>
                            <div class="col-sm-2">
                                <img src="images/incredible-india.png" width="width" height="100px" alt="alt"/>
                            </div>
                            <div class="col-sm-2">
                                <img src="images/makeinindia.png" width="width" height="100px" alt="alt"/>
                            </div>
                            <div class="col-sm-2">
                                <img src="images/pvmewoke.png" width="width" height="100px" alt="alt"/>
                            </div>

                        </div>
                        <jsp:include page="footer.jsp" />
                    </div>
                </div>
                <script>
                    var typed = new Typed('#typed-text', {
                        strings: ["Welcome to Farmer Merchant Integration"],
                        typeSpeed: 40,
                        backSpeed: 10,
                        loop: false
                    });
                </script>
                </body>
                </html>
