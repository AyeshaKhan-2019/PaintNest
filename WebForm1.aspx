<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Paint_Nest_WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
        <title>Paint Nest</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        
</head>
<body>
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
                    <div class="col-md-3">
                        <div class="user">
                            <a href="Cart.aspx" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span>(0)</span>
                            </a>
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
                                                                                  
                            <a href="WebForm1.aspx" class="nav-item nav-link active">Home</a>
                            <a href="#" class="nav-item nav-link">Vendors</a>
                            <a href="ContactUs.aspx" class="nav-item nav-link">Contact us</a>
                            <a href="AboutUs.aspx" class="nav-item nav-link">About us</a>   
                            <a href="OrderHistory.aspx" class="nav-item nav-link">
                                <asp:Label ID="LabelOrderHistory" runat="server" Text="Order History" Visible="false"></asp:Label></a>

                             <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Paint Type</a>
                                <div class="dropdown-menu mn">
                                 <div class="row">
                                    <div class="column">
                                      <h5 style="color:#ffffff; padding: 5px; font-weight:bold;">Interior Paints</h5>
                                      <a href="PaintTypeEnamel.aspx">Enamel Paint</a>
                                      <a href="PaintTypeEmulsion.aspx">Emulsion Paint</a>
                                      <a href="PaintTypeDistemper.aspx">Distemper Paint</a>
                                    </div>
                                    <div class="column">
                                      <h5 style="color:#ffffff; padding: 5px; font-weight:bold;">Exterior Paints</h5>
                                      <a href="PaintTypeWeather.aspx">Weather Paint</a>
                                      <a href="PaintTypeLatex.aspx">Latex Paint</a>
                                    </div>
                                 </div>
                                </div>
                                 
                                 
                            </div>
                                            
                        </div> <!--navbar-nav-mr-auto-->
                      
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                    <asp:Label ID="LabelUserAccount" runat="server" Text="User Account"></asp:Label></a>
                                <div class="dropdown-menu">
                                    <a href="LoginMain.aspx" class="dropdown-item">
                                        <asp:Label ID="LabelLogin" runat="server" Text="Login" Visible="true"></asp:Label></a>
                                    <a href="Register1.aspx" class="dropdown-item">
                                        <asp:Label ID="LabelRegister" runat="server" Text="Register" Visible="true"></asp:Label></a>
                                     <a href="Login.aspx" class="dropdown-item">
                                        <asp:Label ID="LabelLogout" runat="server" Text="Logout" Visible="false"></asp:Label></a>
                                    <a href="CustomerDashboard.aspx" class="dropdown-item">My Account</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            </div>
        
        <!-- Nav Bar End -->      
        
       <br/>
  
    <!-- Main Slider Start -->
        <div class="header">  
              <!-- Category Start-->
        <div class="category">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="category-item ch-400">
                            <img src="img/Decoration1.jpg" />
                            <a class="category-name" href="">
                                <p>New silk finish by SAASI</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="category-item ch-250">
                            <img src="img/holding-tablet.jpg" />
                            <a class="category-name" href="">
                                <p>Try our Paint Preview feature.</p>
                            </a>
                        </div>
                        <div class="category-item ch-150">
                            <img src="img/paint_pic.jpg" />
                            <a class="category-name" href="">
                                <p>Select from a wide variety of paint shades.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="category-item ch-150">
                            <img src="img/shadesss.PNG" />
                            <a class="category-name" href="">
                                <p>Select from a wide variety of paint shades.</p>
                            </a>
                        </div>
                        <div class="category-item ch-250">
                            <img src="img/24.PNG" />
                        
                            <a class="category-name" href="">
                                <p>Try our Paint Preview feature.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="category-item ch-400">
                            <img src="img/Decoration2.jpg" />
                            <a class="category-name" href="">
                                <p>Try Enamel matt finish by GOBBIS.</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Category End-->     
        </div>
        <!-- Main Slider End -->      
        
        <!-- Brand Start -->
   
            <!-- Brand Start -->
        <div class="brand">
            <div class="container-fluid">
                <div class="brand-slider">
                    <div class="column">
                    <div class="brand-item"><img src="img/LogoDiamond.png" alt=""></div></div>
                    <div class="column">
                    <div class="brand-item"><img src="img/LogoNelson.png" alt=""></div></div>
                    <div class="column">
                    <div class="brand-item"><img src="img/LogoGobbis.png" alt=""></div></div>
                    <div class="column">
                    <div class="brand-item"><img src="img/LogoReliance.png" alt=""></div></div>
                    <div class="column">
                    <div class="brand-item"><img src="img/LogoSassi.png" alt=""></div></div>
                </div>
            </div>
        </div>
        <!-- Brand End -->
            
   <br /> <br />
        
        <!-- Featured Product Start -->
        <div class="featured-product product">
            <div class="container-fluid">
                <div class="section-header">
                    <h1>Featured Product</h1>
                </div>
                <div class="row align-items-center product-slider product-slider-4">
                    <div class="col-lg-3">
                        <div class="product-item">
                            <div class="product-title">
                                <a href="#">Nelson Extra- Silk Enamel</a>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="product-image">
                                <a href="product-detail.html">
                                    <img src="img/nelsons.jpg" " alt="Product Image"/>
                                   
                                </a>
                                <div class="product-action">
                                    <a href="#"><i class="fa fa-cart-plus"></i></a>
                                    <a href="#"><i class="fa fa-heart"></i></a>
                                    <a href="#"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                            <div class="product-price">
                                <h3>Rs. 300/Qtr.</h3>
                                <a class="btn" href="#"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product-item">
                            <div class="product-title">
                                <a href="#">Dulux- Velvet Touch</a>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="product-image">
                                <a href="product-detail.html">
                                    <img src="img/dulux-2.jpg" alt="Product Image" style="max-height:285px"/> 

                                </a>
                                <div class="product-action">
                                    <a href="#"><i class="fa fa-cart-plus"></i></a>
                                    <a href="#"><i class="fa fa-heart"></i></a>
                                    <a href="#"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                            <div class="product-price">
                                <h3>Rs. 350/Qtr.</h3>
                                <a class="btn" href="#"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product-item">
                            <div class="product-title">
                                <a href="#">Diamond- Roof Coat</a>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="product-image">
                                <a href="product-detail.html">
                                     <img src="img/Diamond.jpg" alt="Product Image" style="max-height:285px"/>
                                   
                                </a>
                                <div class="product-action">
                                    <a href="#"><i class="fa fa-cart-plus"></i></a>
                                    <a href="#"><i class="fa fa-heart"></i></a>
                                    <a href="#"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                            <div class="product-price">
                                <h3>Rs. 400/Qtr.</h3>
                                <a class="btn" href="#"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product-item">
                            <div class="product-title">
                                <a href="#">GOBBIS-Matt Finish</a>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <div class="product-image">
                                <a href="product-detail.html">
                                    <img src="img/Gobbi.png" alt="Product Image"/>
                                    
                                </a>
                                <div class="product-action">
                                    <a href="#"><i class="fa fa-cart-plus"></i></a>
                                    <a href="#"><i class="fa fa-heart"></i></a>
                                    <a href="#"><i class="fa fa-search"></i></a>
                                </div>
                            </div>
                            <div class="product-price">
                                <h3>Rs. 300/Qtr.</h3>
                                <a class="btn" href="#"><i class="fa fa-shopping-cart"></i>Buy Now</a>
                            </div>
                        </div>
                    </div>
                    
                        </div>
                    </div>
                </div>
           
        
        <!-- Featured Product End -->       
           
        <!-- Review Start -->
        <div class="review">
            <div class="container-fluid">
                <div class="section-header">
                    <h1>Testimonial</h1>
                </div>
                <div class="row align-items-center review-slider normal-slider">
                    <div class="col-md-6">
                        <div class="review-slider-item">
                            <div class="review-img">
                                <img src="img/LadyAvatar.jpg" alt="Image"/>
                            </div>
                            <div class="review-text">
                                <h2>Jane Doe</h2>
                                <h3>Interior Designer</h3>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <p>Paint Nest has made my work easy and I could implement my ideas virtually through Paint Preview.
                                          </p>
                            </div>
                        </div>
                    </div><br /><br /><br />
                     <div class="col-md-6">
                        <div class="review-slider-item">
                            <div class="review-img">
                                <img src="img/ManAvatar.png" alt="Image"/>
                            </div>
                            <div class="review-text">
                                <h2>Ahmed Iqbal</h2>
                                <h3>Builder</h3>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <p>Paint Nest has made my work easy and I could either opt for delivery or pickup depending upon my work schedule.
                                          </p>
                            </div>
                        </div>
                    </div>
                    <br /><br /><br /><br />
                     <div class="col-md-6">
                        <div class="review-slider-item">
                            <div class="review-img">
                                <img src="img/Man2Avatar.png" alt="Image"/>
                            </div>
                            <div class="review-text">
                                <h2>Hassan Askari</h2>
                                <h3>Manager</h3>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <p>Paint Nest has reduce wastage of resources through their Paint Preview feature and we were able to safe alot from our given budget.                                    </p>
                            </div>
                        </div>
                    </div><br /><br /><br /><br />

                    <div class="col-md-6">
                        <div class="review-slider-item">
                            <div class="review-img">
                                <img src="img/Lady2Avatar.png" alt="Image"/>
                            </div>
                            <div class="review-text">
                                <h2>Mrs. Ansari</h2>
                                <h3>Housewife</h3>
                                <div class="ratting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <p>Paint Nest has reduce the stress through their delivery option and I could get my order hassle-free from the comfort of my home.
                                          </p>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        
        <!-- Review End -->        
        <br /><br />
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
                                <li><a href="#">About Us</a></li>
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
        
       
    </body>
</html>
