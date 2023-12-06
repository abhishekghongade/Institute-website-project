<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <link rel="icon" href="images/fevicon.png" type="image/gif" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>JavaByKiran</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section long_section px-0">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="/home">
          <span>
            <img src="images/tka-logo1.png" alt="">
          </span>
        </a>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/about-page"> About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/courses-page">Courses</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/support">Support</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/book-mock">Book Mock</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/contact-page">Contact Us</a>
              </li>
            </ul>
            <div class="quote_btn-container">
              <span>
                Hello <%out.println(request.getAttribute("name")); %>
              </span>
          </div>
          </div>
         <a href="/logout">
              <span>
                Logout
              </span>
            </a>
        </div>
      </nav>
    </header>
    <!-- end header section -->
  </div>

      <!-- furniture section -->

  <section class="furniture_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
        Our Top Courses
        </h2>
        <p>
        Choose your course with complete bundle of classroom training. Each training is handled by a team of experienced professionals who has years of experience in the particular field.        </p>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <a href="/java-full-stack"> <img src="images/f1.png" alt=""></a>
            </div>
            <div class="detail-box">
              <h5>
                JAVA FULL STACK TRAINING
              </h5>
              <div class="price_box">
                <a href="/java-full-stack">
                  Enroll Now
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <a href="/aws-certification-training"><img src="images/f2.png" alt=""></a>
            </div>
            <div class="detail-box">
              <h5>
                AWS Certification Training
              </h5>
              <div class="price_box">
                <a href="/aws-certification-training">
                 Enroll Now
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <a href="/selenium-testing-training"><img src="images/f3.png" alt=""></a>
            </div>
            <div class="detail-box">
              <h5>
                Selenuim Testing Training
              </h5>
              <div class="price_box">
           
                <a href="/selenium-testing-training">
                  Enroll Now
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <a href="/python-full-stack"><img src="images/f4.png" alt=""></a>
            </div>
            <div class="detail-box">
              <h5>
               PYTHON FULL STACK TRAINING
              </h5>
              <div class="price_box">
                
                <a href="/python-full-stack">
                  Enroll Now
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <a href="/salesforce-developer-training"><img src="images/f5.png" alt=""></a>
            </div>
            <div class="detail-box">
              <h5>
                SalesForce Developer Training
              </h5>
              <div class="price_box">
                <a href="/salesforce-developer-training">
                  Enroll Now
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-4">
          <div class="box">
            <div class="img-box">
              <a href="/angular-developer-training"><img src="images/f6.png" alt=""></a>
            </div>
            <div class="detail-box">
              <h5>
                Angular Developer Training
              </h5>
              <div class="price_box">
                
                <a href="/angular-developer-training">
                  Enroll Now
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end furniture section -->

  
  <!-- info section -->
  <section class="info_section long_section">

    <div class="container">
      <div class="contact_nav">
        <a href="">
          <i class="fa fa-phone" aria-hidden="true"></i>
          <span>
            Call : +91 88888 09416
          </span>
        </a>
        <a href="">
          <i class="fa fa-envelope" aria-hidden="true"></i>
          <span>
            Email : javabykiran@gmail.com
          </span>
        </a>
        <a href="https://www.google.com/maps/dir//18.4891836,73.814217" target="_blank">
          <i class="fa fa-map-marker" aria-hidden="true"></i>
          <span>
            Location
          </span>
        </a>
      </div>

      <div class="info_top ">
        <div class="row ">
          <div class="col-sm-6 col-md-4 col-lg-3">
            <div class="info_links">
              <h4>
                QUICK LINKS
              </h4>
              <div class="info_links_menu">
                <a class="" href="/home">Home <span class="sr-only">(current)</span></a>
                <a class="" href="/about-page"> About</a>
                <a class="" href="/contact-page">Contact Us</a>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 col-lg-3 mx-auto">
            <div class="info_post">
              <h5>
                INSTAGRAM FEEDS
              </h5>
              <div class="post_box">
                <div class="img-box">
                  <img src="images/f1.png" alt="">
                </div>
                <div class="img-box">
                  <img src="images/f2.png" alt="">
                </div>
                <div class="img-box">
                  <img src="images/f3.png" alt="">
                </div>
                <div class="img-box">
                  <img src="images/f4.png" alt="">
                </div>
                <div class="img-box">
                  <img src="images/f5.png" alt="">
                </div>
                <div class="img-box">
                  <img src="images/f6.png" alt="">
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="info_form">
              <h3>Follow Us On Social Media</h3>
              
              <div class="social_box">
                <a href="https://www.facebook.com/javabykiran">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="https://twitter.com/javabykiran?lang=en">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="https://www.linkedin.com/company/javabykirantraining/">
                  <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
                <a href="https://www.instagram.com/javabykiran/">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->


  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
  <!-- End Google Map -->

</body>


</html>