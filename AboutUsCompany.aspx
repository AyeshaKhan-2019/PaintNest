<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUsCompany.aspx.cs" Inherits="Paint_Nest_WebApp.AboutUsCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
        <title>Paint Nest</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon"/>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet"/>

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link href="lib/slick/slick.css" rel="stylesheet"/>
        <link href="lib/slick/slick-theme.css" rel="stylesheet"/>
        <!-- w3school styleshett for side tabs-->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>

         <!-- STYLESHEET FROM ADMINLTE  -Google Font: Source Sans Pro -->
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>
          <!-- Font Awesome Icons -->
            <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css"/>
           <!-- overlayScrollbars -->
            <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>
           <!-- SweetAlert2 -->
            <link rel="stylesheet" href="../../plugins/sweetalert2/sweetalert2.min.css"/>
           <!-- Toastr -->
            <link rel="stylesheet" href="../../plugins/toastr/toastr.min.css"/>
           <!-- Theme style -->
            <link rel="stylesheet" href="dist/css/adminlte.min.css"/>

    <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

     <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet"/>

<style>
.reveal {
  position: relative;
  opacity: 0;
}

.reveal.active {
  opacity: 1;
}
.active.fade-bottom {
  animation: fade-bottom 1s ease-in;
}
@keyframes fade-bottom {
  0% {
    transform: translateY(50px);
    opacity: 0;
  }
  100% {
    transform: translateY(0);
    opacity: 1;
  }
}
    </style>


    <script>
        function reveal() {
            var reveals = document.querySelectorAll(".reveal");

            for (var i = 0; i < reveals.length; i++) {
                var windowHeight = window.innerHeight;
                var elementTop = reveals[i].getBoundingClientRect().top;
                var elementVisible = 150;

                if (elementTop < windowHeight - elementVisible) {
                    reveals[i].classList.add("active");
                } else {
                    reveals[i].classList.remove("active");
                }
            }
        }

        window.addEventListener("scroll", reveal);
    </script>

</head>
<body>
    <form id="form1" runat="server">
         <!-- Top bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                                    <a href=""><i class="fab fa-twitter" style="color:#d1c2f0;"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"style="color:#d1c2f0;"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"style="color:#d1c2f0;"></i></a>
                                    <a href=""><i class="fab fa-instagram"style="color:#d1c2f0;"></i></a>
                                    <a href=""><i class="fab fa-youtube"style="color:#d1c2f0;"></i></a>
                                    <a href="support@email.com"><i class="fa fa-envelope"style="color:#d1c2f0;"></i></a>  
                 
                </div>
            </div>
        </div>
        <!-- Top bar End -->
        
     <!-- Middle Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="WebForm1.aspx">
                               <img src="img/Big_Logo.png" style="max-width:100px; max-height:140px;">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="search">
                            <input type="text" placeholder="Search">
                            <button><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Middle Bar End -->       

        <!-- Nav Bar Start -->
        <div class="nav">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                       
                        <div class="navbar-nav mr-auto">
                                                                                  
                            <a href="ProductManagement.aspx" class="nav-item nav-link">Product Catalog Management</a>
                            <a href="OrderManagement.aspx" class="nav-item nav-link">Order Management</a>
                            <a href="ContactUsCompany.aspx" class="nav-item nav-link">Contact us</a>
                            <a href="AboutUsCompany.aspx" class="nav-item nav-link active">About us</a>   

                                                                        
                        </div> <!--navbar-nav-mr-auto-->
                      
                       <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                    <asp:Label ID="LabelUserAccount" runat="server" Text="User Account"></asp:Label></a>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item">Logout</a>
                                    
                                    <a href="CompanyDashboard.aspx" class="dropdown-item">My Account</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            </div>
        
        <!-- Nav Bar End -->      
        
       <br/>

               <!-- AboutUs content -->
    <!-- Main Heading-->
        <div class="row" style="padding-left:2em; padding-right:2em;">         
            
           <div class="info-box" style="box-shadow:none; background-image:url('img/wallpaperbetter.com_1280x1024.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover; height:150px">
               <h1 class="info-box-text" style="text-align:center; font-family:sans-serif; color:white; opacity:1; position:absolute; top: 50%;  left: 50%;  transform: translate(-50%, -50%);"><b> WHO WE ARE</b></h1>
           </div>  
       </div>        <!-- /.row -->
        <!--Main Heading-->

        <!--Para-->
        <div class="row" style="padding-left:2em; padding-right:2em;">      
            <div class="info-box"  >
                <div class="col-1"></div>
               <p class="info-box-text col-10" style="text-align:center; font-family:sans-serif; color:black; font-size:20px; line-height: 1.6;">
                  <br />
                   Paint Nest is a one-stop online decorative paint shopping platform that brings local decorative paint companies based in Karachi at one place.<br />
                   Our goal is to facilitate paint companies who have limited resources with services like any other multinational paint brands.<br />
                   We offer e-commerce solution to local paint companies helping them increasing their sales and create convenience for consumers <br />
                   to get their product from the comfort of their place without glitch. <br /><br />
                   We also provide virtual solution to the consumers helping them in choosing the right paint color. Our Paint Preview feature is a<br />
                   mobile application that allows user to determine beforehand how the paint will look when applied virtually. This would reduce <br />
                   the risk of wastage of resources for customers when buying paints.<br />
               </p>
                <div class="col-1"></div>
           </div> 
         </div>        <!-- /.row -->
        <!--Para-->

         <!-- Service Heading-->
               
        <!-- Sevice section Start -->
        <div class="row" style="padding-left:2em; padding-right:2em;">         
            
           <div class="info-box" style="box-shadow:none; background-image:url('img/wallpaperbetter.com_1280x1024.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover; height:150px">
               <h1 class="info-box-text" style="text-align:center; font-family:sans-serif; color:white; opacity:1; position:absolute; top: 50%;  left: 50%;  transform: translate(-50%, -50%);"><b> OUR SERVICES</b></h1>
           </div>  
       </div> 
<div class="row" style="padding-left:2em; padding-right:2em;">
      <div class="info-box ">
        <div class="info-box-content">
          <div id="services" class="container-fluid text-center">
            <br />
                <div class="row slideanim reveal fade-bottom">
                    <div class="col-sm-3">
                        <span><img style="height:80px;" src="img/Catalog.png" /></span>
                        <h6 style="padding-top:1em;">Extensive Paint Catalog</h6>
                    </div>
                    <div class="col-sm-3">
                        <span><img style="height:80px;" src="img/Afford.png" /></span>
                        <h6 style="padding-top:1em;">Budget Friendly Products</h6>
                    </div>
                    <div class="col-sm-3">
                        <span><i class="fas fa-shipping-fast fa-5x" style="color:#663399;"></i></span>
                        <h6 style="padding-top:1em;">Fast Delivery</h6>
                    </div>
                    <div class="col-sm-3">
                        <span><img style="height:80px;" src="img/AR.png" /></span>
                        <h6 style="padding-top:1em;">Paint Preview<br /><small>Color Visualiser Mobile App</small></h6>
                    </div>
                </div>
            </div>  <!-- services -->
          </div>     <!-- /.info-box-content -->
                <br />
        </div>  <!-- /.info-box -->
    </div>        <!-- /.row -->
    <br />
 <!-- Services Section End -->
   <!-- /.row -->
        <!--Service Heading-->

        <!-- AboutUs content end-->
        <br />
        <!-- Footer Start -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Get in Touch</h2>
                            <div class="contact-info">
                                <p><i class="fa fa-map-marker"></i>ABC Town, Karachi.</p>
                                <p><i class="fa fa-envelope"></i>painnest@gmail.com</p>
                                <p><i class="fa fa-phone"></i>+123-456-7890</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Follow Us</h2>
                            <div class="contact-info">
                                <div class="social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="#"><i class="fab fa-instagram"></i></a>
                                    <a href="#"><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Company Info</h2>
                            <ul>
                                <li><a href="AboutUsCompany.aspx">About Us</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms & Condition</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Purchase Info</h2>
                            <ul>
                                <li><a href="#">Payment Policy</a></li>
                                <li><a href="#">Shipping Policy</a></li>
                                <li><a href="#">Return Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
               
            </div>
        </div>
        <!-- Footer End -->
        
        <!-- Footer Bottom Start -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 copyright">
                        <p>Copyright &copy;Paint Nest. All Rights Reserved</p>
                    </div>

                    
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->       
        
        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        

    </form>
</body>
</html>

