<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDashboard.aspx.cs" Inherits="Paint_Nest_WebApp.CustomerDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
        <title>Paint Nest</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

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
    /* The popup form - hidden by default */
#Form {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
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
                            <a href="OrderHistory.aspx" class="nav-item nav-link">Order History</a>

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
                                    <a href="Login.aspx" class="dropdown-item">Logout</a>
                                    
                                    <a href="CustomerDashboard.aspx" class="dropdown-item">My Account</a>
                                    <%-- <a href="Login.aspx" class="dropdown-item" role="button" aria-required="False" >Logout</a>
                                   <asp:LinkButton ID="LinkButtonLogout" class="dropdown-item" runat="server" OnClick="Btnlogout_Click">Logout</asp:LinkButton>--%>
                                </div>
                            </div>
                          </div>
                    </div>
                </nav>
            </div>
            </div>
        
        <!-- Nav Bar End -->      
        
       <br/><br />
        
    <!-- Customer Dasboard Start -->
    

        <!--Main Content-->

 <div class="card">
 <!-- Sidebar-->  
      <!--tab script starts-->
    <script>
        function openCity(evt, cityName) {
            var i, x, tablinks;
            x = document.getElementsByClassName("city");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < x.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" w3-deep-purple", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " w3-deep-purple";
        }

       
    </script>
     <!--tab script ends-->

     

<div class="row">
   <div class="col-4 col-sm-2">
       <div class="flex-column nav-tabs h-100" id="vert-tabs-tab" role="tablist" aria-orientation="vertical" style="background-color: #e2e5ef; width:contain; margin-top:-7%;">

   <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex" style="background-color: #e2e5ef;">
       <div class="image">
         <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2"  style="margin-left:7px; margin-top:14px;" alt="User Image"/>
        </div>
        <div class="info">
         <%-- <a href="#" class="d-block" style="color: #6f42c1; margin-top:14px;">Alexander Pierce</a>--%>
            <asp:Label ID="LabelUserName" runat="server" class="d-block" style="color: #6f42c1; margin-top:14px;" Text=""></asp:Label>
        </div>          
      </div>
    <hr style="margin-top:-8px;"/>
   
  <button class="w3-bar-item w3-button w3-deep-purple tablink" onclick="openCity(event, 'London')" style="margin-left:2px; float:left; padding-left:20px; padding-right:88px;"><i class="nav-icon fas fa-tachometer-alt"></i>&nbsp&nbspDashboard</button>
  <button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Paris')" style="margin-left:2px; float:left; padding-left:20px; padding-right:123px;"><i class="nav-icon fas fa-user"></i>&nbsp&nbspProfile</button>
  <%--<button class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Tokyo')" style="margin-left:2px; float:left; padding-left:20px; padding-right:75px;"> <i class="nav-icon fas fa-swatchbook"></i>&nbsp&nbspPaint Catalog</button> --%>
           
     </div>
    </div>
     <!-- Sidebar End-->    

<!--Page Content-->
<div class="col-8 col-sm-10">
    <div class="tab-content" id="vert-tabs-tabContent">
  
 <!-- Dash Block-->
   
      <div id="London" class="w3-container city" style="display:block;">
    <br />
          <h2>My Dashboard</h2>
   <br/>
    
     <!-- Dashboard content -->
    <section class="content" >
      <div class="container-fluid">
        <!-- Info boxes row start-->
        <div class="row" style="padding-left:-7px;">
          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cart-arrow-down"></i></span>

              <div class="info-box-content">
                <span class="info-box-text"><a href="OrderHistory.aspx" style="color:black;">Orders Placed</a></span>
                <span class="info-box-number">
                  10
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box mb-3">
              <span class="info-box-icon elevation-1" style="background-color:#ffc107 ;"><i class="fas fa-spinner"></i></span>

              <div class="info-box-content">
                <span class="info-box-text"><a href="OrderHistory.aspx" style="color:black;">Orders in Progress</a></span>
                <span class="info-box-number">4</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->


          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box mb-4">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

              <div class="info-box-content">
                <span class="info-box-text"><a href="OrderHistory.aspx" style="color:black;">Orders Delivered</a></span>
                <span class="info-box-number">7</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          </div>
        <!-- /.row -->
    </div>
</section>

            </div><!-- Dash Block-->



    <!-- Profile Block-->
 <div id="Paris" class="w3-container city" style="display:none">
    <br />
     <h2>Profile</h2>
   <br/>

     <!--Pop-up form-->
      <script>

          function openForm() {
              document.getElementById("Form").style.display = "block";
          }

          function closeForm() {
              document.getElementById("Form").style.display = "none";
          }

          //Numeric data entry ONLY  && (charCode >= 96 && charCode <= 105)

          function ValidNumeric(event) {
              var charCode = (event.which) ? event.which : event.keyCode;
              if (charCode >= 48 && charCode <= 57) {
                  return true;
              }
              else {
                  return false;
              }
          }

      </script>

     <!-- Profile content -->
     
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
          <div class="col-md-12 col-sm-12 col-12">
            <div class="info-box info-outline-purple">
              <span class="info-box-icon"><i class="far fa-user"></i></span>

              <div class="info-box-content">
                <span class="info-box-text" style="color: #6f42c1;"><b>USER INFORMATION</b></span>
               
                <span class="progress-description" style="padding-left:2%;">
                  <span id="name">Name: </span>         <asp:Label ID="LabelProfileName" runat="server" Text="A"></asp:Label><br />
                  <span id="email">Email: </span>       <asp:Label ID="LabelProfileEmail" runat="server" Text="A"></asp:Label><br />
                  <span id="contact">Contact: </span>   <asp:Label ID="LabelProfileContact" runat="server" Text=""></asp:Label><br />
                  
                  <span id="address">Address: </span>   <asp:Label ID="LabelProfileAddress" runat="server" Text=""></asp:Label>,  
                                                        <asp:Label ID="LabelProfileAddressState" runat="server" Text=""></asp:Label>,   
                                                        <asp:Label ID="LabelProfileAddressCity" runat="server" Text=""></asp:Label>,   
                                                        <asp:Label ID="LabelProfileAddressCountry" runat="server" Text=""></asp:Label>, 
                                                        <asp:Label ID="LabelProfileAddressZipCode" runat="server" Text=""></asp:Label>           
                </span>
                
              </div>    
                <br />
        <a class="btn btn-app" style="margin-top:18%;" onclick="openForm()">
                  <i class="fas fa-edit"></i> Edit Address
        </a>
          <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>

        <div id="UpdateSuccess" class="w3-panel w3-border w3-border-green  w3-display-container w3-half" runat="server" visible="false">
            <span onclick="this.parentElement.style.display='none'" class="w3-button w3-large w3-display-right">&times;</span> 
            <br /><p style="color: green;"><i class="fa fa-check"></i>&nbsp Billing information is successfully updated!</p>     
        </div>

         </div>
        <!-- /.row -->
         <br />
         
    </div><!-- container-fluid end-->

        
     
</section>
     

     

     <form  id="Form" runat ="server"  style="top:20%; left:10%; border:none; right:15px;">
         <!--form header-->
        <div class="card card-outline card-purple">
          <div class="card-header ">
              <h3 class="card-title"><b>ADDRESS INFORMATION</b></h3>
               <!-- card-tools -->
                <div class="card-tools">
                  <button type="button" class="btn btn-tool"  data-card-widget="remove" onclick="closeForm()">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
               <!-- /.card-tools -->
            </div>
            
          <!--form header close-->
          <asp:Label ID="LabelAlert" runat="server" Text="" ForeColor="Red"></asp:Label>
          <!--form content-->
        <!-- /.card-body -->
        <div class="card-body">
          <div class="row">
              <div class="col-md-12">
                   <label>Address</label>
                  <asp:TextBox ID="TextAddress"  class="form-control" runat="server" name="Address" placeholder="Address"></asp:TextBox>
              </div>
              <div class="col-md-6">
                   <label>Country</label>
                  <asp:DropDownList ID="DropDownCountry" class="form-control" runat="server" >
                      <asp:listitem text="Pakistan" value="Pakistan" Selected="True"></asp:listitem>
                  </asp:DropDownList>                  
              </div>
              <div class="col-md-6">
                   <label>City</label>
                    <asp:DropDownList ID="DropDownCity" class="form-control" runat="server">
                      <asp:listitem text="Karachi" value="Karachi" Selected="True"></asp:listitem>
                      <asp:listitem text="Hyderabad" value="Hyderabad" ></asp:listitem>
                  </asp:DropDownList>
              </div>
              <div class="col-md-4">
                   <label>State</label>
                   <asp:DropDownList ID="DropDownState" class="form-control" runat="server" >
                      <asp:listitem text="Sindh" value="Sindh" Selected="True"></asp:listitem>
                      <asp:listitem text="Punjab" value="Punjab" ></asp:listitem>
                      <asp:listitem text="Balochistan" value="Balochistan" ></asp:listitem>
                       <asp:listitem text="Khyber Pakhtunkhwa" value="Khyber Pakhtunkhwa" ></asp:listitem>
                  </asp:DropDownList>
              </div>
              <div class="col-md-4">
                   <label>ZIP Code</label>
                  <asp:TextBox ID="TextZipcode"  class="form-control" runat="server"  name="ZipCode" placeholder="ZIP Code" onkeypress="return ValidNumeric(event)" MaxLength="5"></asp:TextBox>                  
              </div>               
               <div class="col-md-4">
                   <label>Contact No.</label>
                  <asp:TextBox ID="TextContact"  class="form-control" runat="server"  name="Contact No." placeholder="Contact No." TextMode="Phone" MaxLength="14" onkeypress="return ValidNumeric(event)"></asp:TextBox>                  
              </div>  

            <div class="col-md-10"></div>
               <div class="col-md-2">
                 <asp:Button ID="Btnaddress" runat="server" Text="Save" class="btn btn-block bg-gradient-purple" style="color:white; " OnClick="Btnaddress_Click" />
               </div>
          </div>    <!--form content end-->
         </div>  <!-- /.card-body -->
        </div>  <!--card-->
      
         <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" style="color:white; background-color:transparent; border:none; outline:none; font-size:13px;"  />

      </form> <!--Pop-up form end-->

  </div><!-- Profile Block END-->

    

</div> <!--tab-content-->
  
    
      </div>  <!--col-->
    </div>  <!--row-->
  </div><!--Main Card-->

   <!-- Customer Dasboard end --> 

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


