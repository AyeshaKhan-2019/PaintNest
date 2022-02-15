<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail-RainbowEnamel.aspx.cs" Inherits="Paint_Nest_WebApp.ProductDetail_RainbowEnamel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
        <title>Paint Nest</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

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
    
    <!-- Custom Javascript -->
    <script src="js/store.js"></script>  
    <style>
        .paint-lbl {
            font-size: 24px;
        }
        .shopItem .product-content .price span {
  color: #999999;
  text-decoration: none !important;
  margin-left: 12px;
}
    </style>
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
                                <span id="qty-no">(0)</span>
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
                                                                                  
                            <a href="WebForm1.aspx" class="nav-item nav-link">Home</a>
                            <a href="#" class="nav-item nav-link">Vendors</a>
                            <a href="ContactUs.aspx" class="nav-item nav-link">Contact us</a>
                            <a href="AboutUs.aspx" class="nav-item nav-link">About us</a> 
                            <a href="OrderHistory.aspx" class="nav-item nav-link">
                                <asp:Label ID="LabelOrderHistory" runat="server" Text="Order History" Visible="false"></asp:Label></a>


                             <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Paint Type</a>
                                <div class="dropdown-menu mn">
                                 <div class="row">
                                    <div class="column">
                                      <h5 style="color:#ffffff; padding: 5px; font-weight:bold;">Interior Paints</h5>
                                      <a href="PaintTypeEnamel.aspx">Enamel Paint</a>
                                      <a href="PaintTypeEmulsionl.aspx">Emulsion Paint</a>
                                        <a href="PaintTypeDistemper.aspx">Distemper Paint</a>
                                    </div>
                                    <div class="column">
                                        <h5 style="color: #ffffff; padding: 5px; font-weight: bold;">Exterior Paints</h5>
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
                                    <a href="Login.aspx" class="dropdown-item">
                                        <asp:Label ID="LabelLogin" runat="server" Text="Login" Visible="true"></asp:Label></a>
                                    <a href="Register2.aspx" class="dropdown-item">
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
        
       <br/><br />

         <!-- Product Detail Start -->
        <div class="shopItem">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="product-detail-top">
                            <div class="row align-items-center">
                                <div class="col-md-5">
                                  
                                    <div class="product-slider-single-nav normal-slider">
                                        <div class="slider-nav-shop-item-image"><img src="img/rainbow.png" alt="Product Image"></div>
                                       
                                       
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="product-content">
                                        
                                        <div class="shop-item-title">
                                            <asp:Label ID="PaintName" runat="server" CssClass="paint-lbl"></asp:Label>
                                            <%--<h2>Rainbow Enamel Paint</h2>--%></div>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="price">
                                            <h4>Price:</h4>
                                            <asp:Label ID="PriceData" runat="server" CssClass="paint-lbl"></asp:Label>
                                        </div>
                                        <br />
                                         <form id="Form1" runat="server">

                                        <div class="cart-quantity-input">
                                            <h4>Quantity:</h4>
                                            <div class="qty">
                                                <div class="row" style="margin-left: 2px;">
                                                <a href="javascript:void(0);" onclick="qtyChangeCustom(this)" class="btn btn-minus .qty button"><i class="fa fa-minus"></i></a>
                                                <input  type="text" value="1"/>
                                                <a href="javascript:void(0);" onclick="qtyChangeCustom(this)" class="btn btn-plus .qty button"><i class="fa fa-plus"></i></a>
                                            </div>
                                            </div>
                                        </div>
                                     <br />
                                        <div class="p-size">
                                            <h4>Size:</h4>
                                            <div id="SizeDiv" runat="server">
                                                <%--<a href="javascript:void(0);" class="btn shopItem shop-item-price" onclick="updateSize(this)"><asp:Label ID="QtrPrc" runat="server"></asp:Label></a>
                                                <a href="javascript:void(0);" class="btn shopItem shop-item-price" onclick="updateSize(this)"><asp:Label ID="GalPrc" runat="server"></asp:Label></a>
                                                <a href="javascript:void(0);" class="btn shopItem shop-item-price" onclick="updateSize(this)"><asp:Label ID="DrmPrc" runat="server"></asp:Label></a>--%>

                                            </div> 
                                        </div>
                                          <br />
                                        <div class="p-color">
                                            <h4>Color:</h4>
                                            <div class="btn-group btn-group-sm">
                                                
                                                <a href="javascript:void(0);" onclick="updateColor('Indigo')" ID="ButtonIndigo" class="shopItem color-btn" style="background-color:#273f5d;" data-toggle="tooltip" data-placement="top" title="Indigo"></a>
                                                <a href="javascript:void(0);" onclick="updateColor('Glacier Blue')" ID="ButtonGlacier" class="shopItem color-btn" style="background-color:#d0e8ca;" data-toggle="tooltip" data-placement="top" title="Glacier Blue"></a>
                                                <a href="javascript:void(0);" onclick="updateColor('Blossom Pink')" ID="ButtonPink" class="shopItem color-btn" style="background-color:#e6bccf;" data-toggle="tooltip" data-placement="top" title="Blossom Pink"></a>
                                                <a href="javascript:void(0);" onclick="updateColor('Aquamarine')" ID="ButtonAqua" class="shopItem color-btn" style="background-color:#a7d8bc;" data-toggle="tooltip" data-placement="top" title="Aquamarine"></a>
                                                <a href="javascript:void(0);" onclick="updateColor('Grey Blue')" ID="ButtonGrey" class="shopItem color-btn" style="background-color:#c3c7ca;" data-toggle="tooltip" data-placement="top" title="Grey Blue"></a>
                                                <a href="javascript:void(0);" onclick="updateColor('White')" ID="ButtonWhite" class="shopItem color-btn" style="background-color:#f4ebe0;" data-toggle="tooltip" data-placement="top" title="White"></a>
                                              
                                            </div> 
                                        </div>
                                        <br /><br />

                <!--Row Start--><div class="row">
                                  <!--RS label-->
                                     <div class="col-md-4">
                                          <span class="total-prodprice" style="background-color:#d1c2f0; font-weight:bold; font-size:20px; padding:4px 10px 4px 10px;">Rs. 0</span>
                                     </div> <!--Column End-->
                      <div class="col-md-3"></div>
                                     <div class="col-md-5">
                                        <div class="action products">
                                           <%--<asp:LinkButton runat="server" ID="LinkBtnAddCart" class="shop-item-button"><i class="fa fa-shopping-cart"></i>Add to Cart</asp:LinkButton>--%>
                                            <a class="add-to-cart-button" href="Cart.aspx"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
                                        </div>
                                     </div> <!--Column End-->
                               </div><!--Row End-->
                                  </form> <!--Form End--> 
                                        
<br />
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row product-detail-bottom">
                            <div class="col-lg-12">
                                <ul class="nav nav-pills nav-justified">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="pill" href="#description">Description</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="pill" href="#specification">Specification</a>
                                    </li>
                                   
                                </ul>

                                <div class="tab-content">
                                    <div id="description" class="container tab-pane active">
                                        <h4>Product description</h4>
                                        <p>Rainbow Matt Finish Enamel is a high quality premium paint made from light fast and superior quality pigments to use on walls, ceiling, old and new plasters, wood work, metal, chipboard and hard board. It is a tough and long lasting paint that is specially recommended for Kitchen, Bathroom, Corridors, Staircase and Walls etc. Its egg shell finish with soft sheen gives a hard wearing and non-glaring effect. The paint has better stain resistant properties and has good wash ability. It is formulated to give an abrasion resistance paint film which is much more washable and stain resistance with a silky look. It is a environment friendly paint and is ‘Lead-Free’.
                                            </p>
                                    </div>
                                    <div id="specification" class="container tab-pane fade">
                                        <h4>Product specification</h4>
                                        <ul>
                                            <li><b>Colour Range:</b> As per Rainbow Matt Finish Enamel Shade Card.</li>
                                            <li><b>Film Tickness:</b> 25-30 micron per coat.</li>
                                            <li><b>Thinner:</b> Mineral Turpentine, The quantity of Thinner depends on the method of application and surface.</li>
                                            <li><b>Gloss:</b> Egg shell Finish.</li>
                                            <li><b>Covering Capacity:</b> Approx 16-18 sq.m/ltr/coat. However covering depends upon the porosity of the substrate.</li>
                                        </ul>
                                    </div>
                                                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
           <!-- </div>-->
    
               <!-- ProductDetail end -->
<br /><br /><br />
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
<script>
    $(function () {
        localStorage.setItem("paint-name", $('#PaintName').text());
    });
</script>