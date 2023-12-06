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

  <!-- contact section -->
  <section class="contact_section  long_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <div class="heading_container">
              <h2>
                Contact Us
              </h2>
            </div>
            <form action="contact-page" method="post">
              <div>
                <input type="text" placeholder="Your Name"  name="name">
              </div>
              <div>
                <input type="text" placeholder="Phone Number" name="phone">
              </div>
              <div>
                <input type="email" placeholder="Email"  name="email">
              </div>
              <div>
                <input type="text" class="message-box" placeholder="Message" name="msg">
              </div>
              <div class="btn_box">
                <button>
                  SEND
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-6">
          <div class="map_container">
            <div class="map">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.8779092404206!2d73.81164207431897!3d18.489188670133828!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bfd855555537%3A0xf909856a4382f266!2sJava%20by%20kiran%20-%20java%20python%20testing%20classes%20in%20pune!5e0!3m2!1sen!2sin!4v1695014535754!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

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