
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="Paint_Nest_WebApp.ProductManagement" %>

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
                            
                            <a href="ProductManagement.aspx" class="nav-item nav-link active">Product Catalog Management</a>
                            <a href="OrderManagement.aspx" class="nav-item nav-link">Order Management</a>
                            <a href="ContactUsCompany.aspx" class="nav-item nav-link">Contact us</a>
                            <a href="AboutUsCompany.aspx" class="nav-item nav-link">About us</a>   
                                                  </div> <!--navbar-nav-mr-auto-->
                      
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                    <asp:Label ID="LabelUserAccount" runat="server" Text="User Account"></asp:Label></a>
                                <div class="dropdown-menu">
                                    <a href="LoginCompany.aspx" class="dropdown-item">Logout</a>
                                    
                                    <a href="CompanyDashboard.aspx" class="dropdown-item">My Account</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            </div>
        
        <!-- Nav Bar End -->   
        <br /><br />
<script type="text/javascript">
    $(document).ready(function () {

        function addRow() {
            var html = '<tr>' +
                '<td><input type="text" id="ColorName" class="form-control"></td>' +
                '<td><input type="text" id="ColorValue" class="form-control" onkeypress="return ValidNumericHash(event)"></td>' +
                '<td><input type="button" class="BtnPlus form-control btn-outline-info" value="+ Add Row" /></td>' +
                '<td><input type="button" class="BtnMinus form-control btn-outline-danger" value="- Delete Row" /></td>' +
                '</tr>'
            $(html).appendTo($("#Table1"))
        };
        $("#Table1").on("click", ".BtnPlus", addRow);

        function deleteRow() {
            var par = $(this).parent().parent();
            par.remove();
        };
        $("#Table1").on("click", ".BtnMinus", deleteRow);
        
    });

    //Numeric data & Hash entry ONLY
    function ValidNumericHash(event) {
        var charCode = (event.which) ? event.which : event.keyCode;
        if ((charCode == 35) || charCode >= 48 && charCode <= 57) {
            return true;
        }
        else {
            return false;
        }
    }

    //Numeric data entry ONLY
    function ValidNumeric(event) {
        var charCode = (event.which) ? event.which : event.keyCode;
        if ((charCode == 35) || charCode >= 48 && charCode <= 57) {
            return true;
        }
        else {
            return false;
        }
    }

</script>


        <!-- Product Manage Content -->   
    <div style="margin-left:10px; margin-right:10px;">
    <!-- Add New Product -->
            <div class="card card-purple">
              <div class="card-header">
                <h3 class="card-title"><b>Add New Product</b></h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool btn-purple" style="background-color:#605ca8; border:none; color:#fff;" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>               
                </div>
              </div>              <!-- /.card-header --> 

                <!----Product Form------->
              <div class="card-body table-responsive p-0" style="height:350px;">
                <div class="table table-head-fixed text-nowrap">
                    <br />
                     <div class="row" style="margin-left:8px; margin-right:8px;">
                        
                         <!-----Product Category----->
                         <div class="col-md-12">
                              <label>Select Paint Category</label>
                         </div>
                         <div class="col-md-2">
                                <asp:RadioButton ID="RadioButton1" class="custom-control custom-radio" runat="server" text="&nbsp Interior Paint Category" GroupName="Paint Category" Font-Bold="true" AutoPostBack="true"  />
                         </div>

                         <div class="col-md-4">
                             <asp:DropDownList ID="DropDownList2" class="form-control" runat="server"  >
                                <asp:listitem text="Enamel Paint" value="Enamel Paint" Selected="True"></asp:listitem>
                                <asp:listitem text="Emulsion Paint" value="Emulsion Paint" ></asp:listitem>
                                <asp:listitem text="Distemper Paint" value="Distemper Paint" ></asp:listitem>
                              </asp:DropDownList>                 
                        </div>

                         <div class="col-md-2">
                                <asp:RadioButton ID="RadioButton2" class="custom-control custom-radio" runat="server" text="&nbsp Exerior Paint Category" GroupName="Paint Category" Font-Bold="true" AutoPostBack="true"/>
                         </div>
                                                
                        
                            <div class="col-md-4">
                              <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" >
                                <asp:listitem text="Weather Paint" value="Weather Paint" Selected="True"></asp:listitem>
                                <asp:listitem text="Latex Paint" value="Latex Paint" ></asp:listitem>
                              </asp:DropDownList>                  
                           </div>  
                         <!----Product Category End----->

                         <!----Product Name----->
                         <div class="col-md-12">
                              <label>Name of Paint</label>
                              <asp:TextBox ID="TextPaint"  class="form-control" runat="server" name="Name of Paint" placeholder="Name of Paint"></asp:TextBox>
                         </div>
                         <!----Product Name End----->
                         <br /><br /><br /><br />
                         <!----Product Image File----->
                         <div class="col-md-12">
                             <label>Add Image of Paint Container<small style="color: #800000"> [ Supported Format: png ONLY ]</small></label>
                         </div>
                         <div class="col-md-4">
                             <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" /> 
                         </div>
                         <div class="col-md-2">
                           <!--  <asp:Button ID="btnUpload" class="form-control btn" runat="server" Text="Upload Image"/> --->
                         </div>
                         <div class="col-md-6"></div>
                         <!----Product Image File End----->
                         <br /><br /><br /><br />
                         <!---Product Price---->
                         <div class="col-md-12">
                              <label>Enter Price based on Paint Container Size in Rs</label>
                         </div>
                         <div class="col-md-4">
                             <asp:CheckBox ID="CheckBox1"  class="custom-control custom-checkbox" runat="server" text="&nbsp Quarter - 0.91 Litre" GroupName="Paint Price" Font-Bold="true" AutoPostBack="True" />
                         </div>
                         <div class="col-md-4">
                            <asp:TextBox ID="QtrPrice"  class="form-control" runat="server" name="Quarter Container Price" placeholder="Quarter Container Price"  onkeypress="return ValidNumeric(event)" ReadOnly="True"></asp:TextBox>                              
                          </div>
                          <div class="col-md-4"></div>

                         <div class="col-md-4">
                             <asp:CheckBox ID="CheckBox2"  class="custom-control custom-checkbox" runat="server" text="&nbsp Gallon - 3.64 Litre" GroupName="Paint Price" Font-Bold="true" AutoPostBack="True" />
                         </div>
                         <div class="col-md-4">
                              <asp:TextBox ID="GalPrice"  class="form-control" runat="server" name="Gallon Container Price" placeholder="Gallon Container Price"  onkeypress="return ValidNumeric(event)" ReadOnly="True"></asp:TextBox>
                         </div>
                         <div class="col-md-4"></div>

                         <div class="col-md-4">
                             <asp:CheckBox ID="CheckBox3"  class="custom-control custom-checkbox" runat="server" text="&nbsp Drum - 14.56 Litre" GroupName="Paint Price" Font-Bold="true" AutoPostBack="True" />
                         </div>
                         <div class="col-md-4">
                            <asp:TextBox ID="DrumPrice"  class="form-control" runat="server" name="Drum Container Price" placeholder="Drum Container Price"  onkeypress="return ValidNumeric(event)" ReadOnly="True"></asp:TextBox>
                         </div>
                          <div class="col-md-4"></div>
                         <!----Product Price End---->
                         <br /><br /><br />
                         <!----Product Paint Color---->
                                            
                         <div class="col-md-12">
                              <label>Enter Name of Paint Color with their HEX Color Values</label>
                         </div>
                        <div class="col-md-6">
                         <table id="Table1" class="table table-striped projects"  >
                           <thead>
                             <tr>
                                <th style="width: 20%; text-align:center;">
                                    Name of Paint Color
                                </th>
                                <th style="width: 10%; text-align:center;">
                                    HEX Color Values
                                </th>
                                  <th style="width: 3%; text-align:center;">
                                    
                                </th>
                                  <th style="width: 3%; text-align:center;">
                                    
                                </th>
                              </tr>
                           </thead>
                              <tr>
                                <td>
                                    <asp:TextBox ID="ColorName" class="form-control" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="ColorValue" class="form-control" runat="server" onkeypress="return ValidNumericHash(event)"></asp:TextBox>
                                </td>
                                <td>
                                    <input type="button" class="BtnPlus form-control btn-outline-info "  value="+ Add Row" />
                                </td>
                                <td>
                                    <input type="button" class="BtnMinus form-control btn-outline-danger "  value="- Delete Row"  hidden="hidden" />
                                </td>
                            </tr>
                        </table>
                     </div>
                         
  

                         <!----Product Paint Color End---->
                         <div class="col-md-6"></div>
                         <br /><br />

                         <!-------SAVE Button----------->
                         <div class="col-md-10"></div>
                            <div class="col-md-2">
                                <asp:Button ID="BtnSave" runat="server" Text="Save" class="btn btn-block bg-gradient-purple" style="color:white;" OnClick="BtnSave_Click" />
                            </div>
                         <br /><br /><br />
                    <!-------SAVE Button----------->
                                  
                    </div>        <!--row end-->    
                </div>                <!-- /.table-responsive -->
              </div>            <!-----Product Form End------>  <!-- /.card-body -->
              
             
            </div>            <!-- /.card end -->
         <!--Add New Product -->
          <br />

    </div>

        <!-- Product Manage Content End -->   

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
