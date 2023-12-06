<!DOCTYPE html>
<%@page import="com.jbk.entity.MockData"%>
<%@page import="java.util.List"%>

<html>

<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
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

<body>

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section long_section px-0">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="/admin-home">
          <span>
            <img src="images/tka-logo1.png" alt="">
          </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
        </button>
       
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="/admin-home">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/support-data">Support Data</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/mock-data">Mock Data</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/contact-data">Contact Data</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/register-data">Register Data</a>
              </li>
            </ul>
            <div class="quote_btn-container">
              <span>
                WELCOME ADMIN
              </span>
          </div>
          </div>
            <a href="/">
              <span>
                Logout
              </span>
            </a>
        </div>
      </nav>
    </header>
    <!-- end header section -->
    <!-- mock page data -->
      <section class=" layout_padding">
    <div class="container">
      <table id="customers">
  <tr>
    <th>Name</th>
    <th >Email</th>
    <th>Batch No.</th>
    <th>Date</th>
    <th>Time</th>
  </tr>
  <%
    List<MockData> list=  (List<MockData>)request.getAttribute("mockdata");
  %>
  <%for (MockData mockData : list) { 
   %>
   
  <tr>
    <td><%out.println(mockData.getName());%></td>
    <td><%out.println(mockData.getEmail()); %></td>
    <td><%out.println(mockData.getBatch()); %></td>
    <td><%out.println(mockData.getDate()); %></td>
    <td><%out.println(mockData.getTime()); %></td>
  </tr>
  
  <%} %>
</table>
 </div>
 </section>
 
    <!-- End mock page data -->
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
                <a class="" href="/admin-home">Home <span class="sr-only">(current)</span></a>
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
                <a href="https://www.facebook.com/javabykiran" target="_blank">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="https://twitter.com/javabykiran?lang=en" target="_blank">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="https://www.linkedin.com/company/javabykirantraining/" target="_blank">
                  <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
                <a href="https://www.instagram.com/javabykiran/" target="_blank">
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