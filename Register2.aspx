﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register2.aspx.cs" Inherits="Paint_Nest_WebApp.Register2" %>

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
                                                                                  
                            <a href="WebForm1.aspx" class="nav-item nav-link">Home</a>
                            <a href="#" class="nav-item nav-link">Vendors</a>
                            <a href="ContactUs.aspx" class="nav-item nav-link">Contact us</a>
                            <a href="AboutUs.aspx" class="nav-item nav-link">About us</a>   
                        
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
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">User Account</a>
                                <div class="dropdown-menu">
                                    <a href="Login.aspx" class="dropdown-item">Login</a>
                                    <a href="Register2.aspx" class="dropdown-item active">Register</a>
                                    <a href="CustomerDashboard.aspx" class="dropdown-item">My Account</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            </div>
        
        <!-- Nav Bar End -->      
        
       <br /><br />

        <!-- Register2 start -->

     <div class="container">
       <div class="row" >
       <div class="col-md-3"></div>
       <div class="col-md-6" style="margin-bottom: 30px; padding: 20px 30px 15px 30px; background: #ffffff; border: 1px solid #663399; border-radius: 3px;">
  <h2 style="color: #663399; text-align:center; font-family:Arial">Register as Customer</h2>
   

   <form runat="server">
       <asp:Label ID="LabelAlert" runat="server" Text="" ForeColor="Red"></asp:Label><br /><br/>
   Your Name<br/>
    <asp:TextBox ID="txtname" runat="server" style="border: #663399 1px solid; border-radius: 4px;width: 90%; padding: 3px;" type="text" name="Name" value="" class="text-input"></asp:TextBox><br/>
       <asp:RequiredFieldValidator style="color:red;" ID="RequiredFieldValidator1" runat="server" ErrorMessage="***Name is Required***" ControlToValidate="txtname" ValidationGroup="Save"></asp:RequiredFieldValidator>
    <br/><br/>
    E-mail<br/>
    <asp:TextBox ID="txtemail" runat="server" style="border: #663399 1px solid; border-radius: 4px;width: 90%; padding: 3px;" type="text" name="E-mail" value="" class="text-input" TextMode="Email"></asp:TextBox><br/>
    <asp:RequiredFieldValidator style="color:red;" ID="RequiredFieldValidator2" runat="server" ErrorMessage="***Email is Required***" ControlToValidate="txtemail" ValidationGroup="Save"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator style="color:red;" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email ID" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

       <br/><br/>    
       Password<br/>
    <asp:TextBox ID="txtpassword" runat="server" style="border: #663399 1px solid; border-radius: 4px;width: 90%; padding: 3px;" type="text" name="Password" value="" class="text-input" TextMode="Password"></asp:TextBox><br/>
       <asp:RequiredFieldValidator style="color:red;" ID="RequiredFieldValidator3" runat="server" ErrorMessage="***Password is Required***" ControlToValidate="txtpassword" ValidationGroup="Save" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br/><br/>
    Confirm Password<br/>
    <asp:TextBox ID="txtconfirmpass" runat="server" style="border: #663399 1px solid; border-radius: 4px;width: 90%; padding: 3px;" type="text" name="Confirm Password" value="" class="text-input" TextMode="Password"></asp:TextBox><br />
      <asp:CompareValidator style="color:red;" ID="CompareValidator1" runat="server" ErrorMessage="***Password do not match***" 
          ControlToValidate="txtconfirmpass" 
          ControlToCompare="txtpassword"></asp:CompareValidator>
       <br/><br/>
       <asp:Button ID="Btnregistration" runat="server" Text="Next" class="btnregistration"  ValidationGroup="Save" OnClientClick="Btnregistration_click" OnClick="Btnregistration_Click" />    
       <br /><br />
       <p style="text-align:center;">Already have an account? <a href= "Login.aspx" style="color:blue;"><b>Login here</b></a></p>
  </form> 
           </div>
<div class="col-md-3"></div>
           </div>
  </div>


        <!-- Register2 end -->
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
