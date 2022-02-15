<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderManagement.aspx.cs" Inherits="Paint_Nest_WebApp.OrderManagement" %>

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
                            <a href="CompanyDashboard.aspx">
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
                            <a href="OrderManagement.aspx" class="nav-item nav-link active">Order Management</a>
                            <a href="ContactUsCompany.aspx" class="nav-item nav-link">Contact us</a>
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

         <!-- OrderManagement content -->
    <section class="content" style="margin:7px,20px,7px,20px">
        <br />
      <div class="container-fluid">
        <!-- Info boxes row start-->
        <div class="row" style="padding-left:-7px;">
          <div class="col-12 col-sm-6 col-md-4">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cart-arrow-down"></i></span>

              <div class="info-box-content">
                <span class="info-box-text"><a href="#View1" style="color:black;">Orders Received</a></span>
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
                <span class="info-box-text"><a href="#View2" style="color:black;">Orders in Progress</a></span>
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
                <span class="info-box-text"><a href="#View3" style="color:black;">Orders Completed</a></span>
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
        <br/>
        <!-- Table content --> 
        <div style="margin-left:6px; margin-right:6px;">
    <!-- TABLE: RECEIVED ORDERS -->
            <div id="View1" class="card card-info">
              <div class="card-header">
                <h3 class="card-title"><b>Orders Received</b></h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool btn-info" style="background-color:#17a2b8; border:none; color:#fff;" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="height:250px;">
                <div class="table table-head-fixed text-nowrap">
                    <asp:GridView ID="GridView1" class="table m-0" runat="server" AutoGenerateColumns="false" >
                      <Columns>
                         <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
                          <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                          <asp:BoundField DataField="ProductPrice" HeaderText="Product Price (Rs.)" />
                          <asp:BoundField DataField="ProductQuantity" HeaderText="Product Quantity" />
                          <asp:BoundField DataField="ProductSize" HeaderText="Product Size (Ltr.)" />
                          <asp:BoundField DataField="ProductColor" HeaderText="Product Color" />
                          <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                          <asp:BoundField DataField="CustomerContact" HeaderText="Customer Contact" />
                          <asp:BoundField DataField="CustomerAddress" HeaderText="Customer Address" />
                          <asp:BoundField DataField="CustomerEmail" HeaderText="Customer Email" />
                          <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice (Rs.)" />
                       </Columns>
                    </asp:GridView>               
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              
              <!-- /.card-footer -->
            </div>
            <!-- /.card end -->
         <!--TABLE-RECEIVED ORDER-->
          <br />

    <!-- TABLE: IN PROGRESS ORDERS -->
            <div id="View2" class="card card-warning">
              <div class="card-header">
                <h3 class="card-title"><b>Orders in Progress</b></h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool btn-warning" style="background-color:#ffc107; border:none; color:#fff;" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="height:250px;">
                <div class="table table-head-fixed text-nowrap">
                    <asp:GridView ID="GridView2" class="table m-0" runat="server" AutoGenerateColumns="false" >
                      <Columns>
                         <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
                          <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                          <asp:BoundField DataField="ProductPrice" HeaderText="Product Price (Rs.)" />
                          <asp:BoundField DataField="ProductQuantity" HeaderText="Product Quantity" />
                          <asp:BoundField DataField="ProductSize" HeaderText="Product Size (Ltr.)" />
                          <asp:BoundField DataField="ProductColor" HeaderText="Product Color" />
                          <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                          <asp:BoundField DataField="CustomerContact" HeaderText="Customer Contact" />
                          <asp:BoundField DataField="CustomerAddress" HeaderText="Customer Address" />
                          <asp:BoundField DataField="CustomerEmail" HeaderText="Customer Email" />
                          <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice (Rs.)" />
                       </Columns>
                    </asp:GridView>               
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              
              <!-- /.card-footer -->
            </div>
            <!-- /.card end -->
         <!--TABLE-IN PROGRESS ORDER-->
          <br />
    <!-- TABLE: COMPLETED ORDERS -->
            <div id="View3" class="card card-success">
              <div class="card-header">
                <h3 class="card-title"><b>Delivered Orders</b></h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool btn-success" style="background-color:#28a745; border:none; color:#fff;" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                
                </div>
              </div>
              <!-- /.card-header -->
             <div class="card-body table-responsive p-0" style="height:250px;">
                <div class="table table-head-fixed text-nowrap">
                    <asp:GridView ID="GridView3" class="table m-0" runat="server" AutoGenerateColumns="false" >
                      <Columns>
                         <asp:BoundField DataField="OrderId" HeaderText="Order ID" />
                          <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                          <asp:BoundField DataField="ProductPrice" HeaderText="Product Price (Rs.)" />
                          <asp:BoundField DataField="ProductQuantity" HeaderText="Product Quantity" />
                          <asp:BoundField DataField="ProductSize" HeaderText="Product Size (Ltr.)" />
                          <asp:BoundField DataField="ProductColor" HeaderText="Product Color" />
                          <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                          <asp:BoundField DataField="CustomerContact" HeaderText="Customer Contact" />
                          <asp:BoundField DataField="CustomerAddress" HeaderText="Customer Address" />
                          <asp:BoundField DataField="CustomerEmail" HeaderText="Customer Email" />
                          <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice (Rs.)" />
                       </Columns>
                    </asp:GridView>               
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              
              <!-- /.card-footer -->
            </div>
            <!-- /.card end -->
         <!--TABLE-COMPLETED ORDER-->
       </div>         <!-- Table content end --> 

 <!-- OrderManagement content End -->

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
