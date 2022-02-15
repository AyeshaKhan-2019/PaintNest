<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUsCompany.aspx.cs" Inherits="Paint_Nest_WebApp.ContactUsCompany" %>

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
                            <a href="ContactUsCompany.aspx" class="nav-item nav-link active">Contact us</a>
                            <a href="AboutUsCompany.aspx" class="nav-item nav-link">About us</a>   

                                                                        
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

        <!-- ContactUs content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-body row">
          <div class="col-5 text-center d-flex align-items-center justify-content-center" style="background-color:rgb(250, 253, 254);">
            <div style="justify-items:center;">
                <img src="img/Big_Logo.png" style="max-width:200px; max-height:240px;"/>
              <%--<h2><strong>LTE</strong></h2>--%>
                    <p><i class="fa fa-map-marker"></i>&nbsp ABC Town, Karachi.</p>
                    <p><i class="fa fa-envelope"></i>&nbsp painnest@gmail.com</p>
                    <p><i class="fa fa-phone"></i>&nbsp +123-456-7890</p>
            </div>
          </div>
          <div class="col-7">
              <asp:Label ID="LabelAlert" runat="server" Text="" ForeColor="Red"></asp:Label>
            <div class="form-group">
              <label for="inputName">Name</label>
              <asp:TextBox ID="TextName"  class="form-control" runat="server" name="Name" placeholder="Name"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="inputEmail">E-mail</label>
              <asp:TextBox ID="TextEmail"  class="form-control" runat="server" name="E-mail" placeholder="E-mail" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="inputSubject">Subject</label>
              <asp:TextBox ID="TextSub"  class="form-control" runat="server" name="Subject" placeholder="Subject"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="inputMessage">Message</label>
              <asp:TextBox ID="TextMsg"  class="form-control" runat="server" name="Message" placeholder="Message" TextMode="MultiLine" Rows="4" style="padding-top:0.5em;"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="BnMsg" runat="server" Text="Send Message" class="btn btn-block bg-gradient-purple" style="color:white; width: 130px; " onClick="BnMsg_Click" />
            </div>
              <div id="UpdateSuccess" class="w3-panel w3-border w3-border-green  w3-display-container" runat="server" visible="false">
            <span onclick="location.href='ContactUsCompany.aspx'" class="w3-button w3-large w3-display-right">&times;</span> 
            <br /><p style="color: green;"><i class="fa fa-check"></i>&nbsp Your Message is send successfully! Our representative will contact you soon.</p>     
        </div>
          </div>
        </div>
      </div>

    </section>
    <!-- ContactUs content end-->
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
        

    </form>
</body>
</html>

