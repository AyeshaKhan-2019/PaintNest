<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Paint_Nest_WebApp.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Paint Nest</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet" />

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
                <a href=""><i class="fab fa-twitter" style="color: #d1c2f0;"></i></a>
                <a href=""><i class="fab fa-facebook-f" style="color: #d1c2f0;"></i></a>
                <a href=""><i class="fab fa-linkedin-in" style="color: #d1c2f0;"></i></a>
                <a href=""><i class="fab fa-instagram" style="color: #d1c2f0;"></i></a>
                <a href=""><i class="fab fa-youtube" style="color: #d1c2f0;"></i></a>
                <a href="support@email.com"><i class="fa fa-envelope" style="color: #d1c2f0;"></i></a>

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
                            <img src="img/Big_Logo.png" style="max-width: 100px; max-height: 140px;">
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
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Paint Type</a>
                            <div class="dropdown-menu mn">
                                <div class="row">
                                    <div class="column">
                                        <h5 style="color: #ffffff; padding: 5px; font-weight: bold;">Interior Paints</h5>
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

                    </div>
                    <!--navbar-nav-mr-auto-->

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

    <br />
    <br />

    <!-- Checkout Start -->
    <div class="checkout">
        <div class="container-fluid">
            <form id="chkout" runat="server">
                <div class="row">
                    <div class="col-lg-8">

      <!--User Info-->
     
      <div class="checkout-inner">
        <!-- Info boxes -->
        <div class="row">         
            <div class="info-box" style="box-shadow:none;">
          
              <div class="info-box-content">
                <h4 class="info-box-text" style="color: #6f42c1;"><i class="far fa-user"></i><b> CUSTOMER INFORMATION</b></h4>
               <br />                 
                <span class="progress-description" >
                  <span id="name"><b>Name:</b> </span>            <asp:Label ID="LabelProfileName" runat="server" Text=""></asp:Label><br />
                  <span id="email"><b>Email:</b> </ </span>       <asp:Label ID="LabelProfileEmail" runat="server" Text=""></asp:Label><br />
                  <span id="contact"><b>Contact:</b> </ </span>   <asp:Label ID="LabelProfileContact" runat="server" Text=""></asp:Label><br />
                  
                  <span id="address"><b>Address:</b> </ </span>   <asp:Label ID="LabelProfileAddress" runat="server" Text=""></asp:Label>,  
                                                        <asp:Label ID="LabelProfileAddressState" runat="server" Text=""></asp:Label>,   
                                                        <asp:Label ID="LabelProfileAddressCity" runat="server" Text=""></asp:Label>,   
                                                        <asp:Label ID="LabelProfileAddressCountry" runat="server" Text=""></asp:Label>, 
                                                        <asp:Label ID="LabelProfileAddressZipCode" runat="server" Text=""></asp:Label>           
                </span>
                
              </div>    <!-- /.info-box-content -->
            </div>  <!-- /.info-box -->
      </div>        <!-- /.row -->
   </div><!-- container-fluid end-->  
       
          <!--User Info End-->

                        <script>
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
                        

                        <div class="checkout-inner">
                            <div class="billing-address">
                                <asp:CheckBox ID="CheckBox1"  class="custom-control custom-checkbox" runat="server" text="&nbsp Alternate Billing/Shipping Address" GroupName="Enable" AutoPostBack="True" Font-Size="X-Large" Font-Bold="true" Font-Names="'Source Code Pro', monospace"/>
                               
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Address</label>
                                        <asp:TextBox ID="TextAddress"  class="form-control" runat="server" name="Address" placeholder="Address" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    <%--<div class="col-md-12">
                                        <label>Last Name</label>
                                        <input class="form-control" type="text" name="CustomerLastName" placeholder="Last Name" />
                                    </div>--%>
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
                                         <asp:TextBox ID="TextZipcode"  class="form-control" runat="server"  name="ZipCode" placeholder="ZIP Code" onkeypress="return ValidNumeric(event)" MaxLength="5" ReadOnly="True"></asp:TextBox>                  
                                    </div>               
                                    <div class="col-md-4">
                                        <label>Contact No.</label>
                                        <asp:TextBox ID="TextContact"  class="form-control" runat="server"  name="Contact No." placeholder="Contact No." TextMode="Phone" MaxLength="14" onkeypress="return ValidNumeric(event)" ReadOnly="True"></asp:TextBox>                  
                                    </div>  
                                    
                                </div>
                            </div>

                            
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="checkout-inner">
                            <div class="checkout-summary">
                                <h1>Cart Total</h1>
                                <p>Rainbow Enamel Paint<span></span></p>
                                <p class="sub-total">Sub Total<span class="prc"></span></p>
                                <p class="ship-cost">Shipping Cost<span>Rs. 100</span></p>
                                <h2>Grand Total<span class="gprc"></span></h2>
                                <input class="gprc" name="TotalPrice" hidden="hidden" />
                            </div>

                            <div class="checkout-payment">
                                <div class="payment-methods">
                                    <h1>Payment Methods</h1>
                                    <div class="payment-method">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" class="custom-control-input" id="payment" name="payment" />
                                            <label class="custom-control-label" for="payment">Cash on Delivery</label>
                                        </div>
                                        <div class="payment-content" id="payment-show">
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt orci ac eros volutpat maximus lacinia quis diam.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="checkout-btn">
                                    <asp:ScriptManager ID="sm" EnablePageMethods="true" runat="server" />

                                    <script type="text/javascript">
                                        $(function () {
                                            $("#btnPlace").click(function () {
                                                if ($('#CheckBox1').is(':checked')) {
                                                    var order = {
                                                        //CustomerName: $('input[name="CustomerName"]').val(),
                                                        CustomerName: document.getElementById("<%=LabelProfileName.ClientID %>").innerHTML,

                                                        //  CustomerLastName: $('input[name="CustomerLastName"]').val(),
                                                        CustomerLastName: document.getElementById("<%=LabelProfileName.ClientID %>").innerHTML,


                                                        CustomerContact: $('#TextContact').val(),
                                                        //CustomerContact: document.getElementById("<%=LabelProfileContact.ClientID %>").innerHTML,

                                                         CustomerAddress: $('#TextAddress').val(),
                                                        //CustomerAddress: document.getElementById("<%=LabelProfileAddress.ClientID %>").innerHTML,

                                                        //CustomerEmail: $('input[name="CustomerEmail"]').val(),
                                                        CustomerEmail: document.getElementById("<%=LabelProfileEmail.ClientID %>").innerHTML,

                                                        Country: $('#DropDownCountry').val(),
                                                    //Country: document.getElementById("<%=LabelProfileAddressCountry.ClientID %>").innerHTML,

                                                        City: $('#DropDownCity').val(),
                                                    //City: document.getElementById("<%=LabelProfileAddressCity.ClientID %>").innerHTML,

                                                        State: $('#DropDownState').val(),
                                                    //State: document.getElementById("<%=LabelProfileAddressState.ClientID %>").innerHTML,

                                                        ZipCode: $('#TextZipcode').val(),
                                                        //ZipCode: document.getElementById("<%=LabelProfileAddressZipCode.ClientID %>").innerHTML,

                                                        ProductName: localStorage.getItem("paint-name"),
                                                        ProductPrice: localStorage.getItem("tp"),
                                                        ProductQuantity: localStorage.getItem("qty"),
                                                        ProductSize: localStorage.getItem("size"),
                                                        ProductColor: localStorage.getItem("clr"),
                                                        TotalPrice: parseInt(localStorage.getItem("tp")) + 100
                                                    };
                                                }
                                                else {
                                                    var order = {
                                                        //CustomerName: $('input[name="CustomerName"]').val(),
                                                        CustomerName: document.getElementById("<%=LabelProfileName.ClientID %>").innerHTML,

                                                        //  CustomerLastName: $('input[name="CustomerLastName"]').val(),
                                                        CustomerLastName: document.getElementById("<%=LabelProfileName.ClientID %>").innerHTML,


                                                        //CustomerContact: $('input[name="CustomerContact"]').val(),
                                                        CustomerContact: document.getElementById("<%=LabelProfileContact.ClientID %>").innerHTML,

                                                        // CustomerAddress: $('input[name="CustomerAddress"]').val(),
                                                        CustomerAddress: document.getElementById("<%=LabelProfileAddress.ClientID %>").innerHTML,

                                                        //CustomerEmail: $('input[name="CustomerEmail"]').val(),
                                                        CustomerEmail: document.getElementById("<%=LabelProfileEmail.ClientID %>").innerHTML,

                                                   // Country: $('select[name="Country"]').val(),
                                                    Country: document.getElementById("<%=LabelProfileAddressCountry.ClientID %>").innerHTML,

                                                   // City: $('input[name="City"]').val(),
                                                    City: document.getElementById("<%=LabelProfileAddressCity.ClientID %>").innerHTML,

                                                   // State: $('input[name="State"]').val(),
                                                    State: document.getElementById("<%=LabelProfileAddressState.ClientID %>").innerHTML,

                                                    //ZipCode: $('input[name="ZipCode"]').val(),
                                                        ZipCode: document.getElementById("<%=LabelProfileAddressZipCode.ClientID %>").innerHTML,

                                                        ProductName: localStorage.getItem("paint-name"),
                                                        ProductPrice: localStorage.getItem("tp"),
                                                        ProductQuantity: localStorage.getItem("qty"),
                                                        ProductSize: localStorage.getItem("size"),
                                                        ProductColor: localStorage.getItem("clr"),
                                                        TotalPrice: parseInt(localStorage.getItem("tp")) + 100
                                                    };
                                                }
                                                
                                                if (order.CustomerAddress != '' && order.City != '' && order.Country != '' && order.CustomerContact != '' && order.CustomerEmail != '' &&  order.CustomerName != '') {
                                                    PageMethods.PlaceOrder(order, function (result) {
                                                        if (result) {
                                                            debugger;
                                                            //if (confirm('Thanks for your purchasing :) Continue shopping?')) {
                                                            localStorage.setItem("paint-name", ""),
                                                            localStorage.setItem("tp", 0);
                                                            localStorage.setItem("qty", 0);
                                                            localStorage.setItem("size", null);
                                                            localStorage.setItem("clr", null);

                                                            window.location.href = "OrderAlert.aspx";
                                                            //} else {
                                                            //    window.location.href = "WebForm1.aspx";
                                                            //}
                                                        }
                                                        else alert("Oops! something went wrong :<");
                                                    });
                                                }
                                               else {
                                                    alert('Please fill the form carefully!');
                                                }
                                            });
                                        });
                                    </script>
                                    <button type="button" id="btnPlace">Place Order</button>
                                    <%--<asp:Button ID="btnPlace" runat="server" Text="Place Order" OnClick="btnPlace_Click" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Checkout End -->
    <br />
    <br />
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

   
</body>
</html>
<script>
    $(function () {
        $('.qtyy').val(localStorage.getItem("qty"));
        $('.prc').text('Rs. ' + localStorage.getItem("tp"));
        $('.gprc').text('Rs. ' + (parseFloat(localStorage.getItem("tp")) + 100));
        $('#qty-no').text('(' + localStorage.getItem("qty") + ')');
    })

    //function placeOrder() {
    //        var order = {
    //            CustomerName: 'Mizmah',
    //            CustomerContact: null,
    //            CustomerAddress: null,
    //            ProductName: null,
    //            ProductPrice: 1,
    //            ProductQuantity: 0,
    //            TotalPrice: 0
    //        };
    //        $.ajax({
    //            url: '/Checkout.aspx/PlaceOrder',
    //            type: 'POST',
    //            data: { 'order': order },
    //            contentType: "application/json; charset=utf-8",
    //            dataType: "json",
    //            success: function (response) {
    //                if (response.success) {

    //                }
    //            }
    //        });
    //    }
    function confirmMsg() {
        alert('Thank you for your purchase :)');
    }
</script>
