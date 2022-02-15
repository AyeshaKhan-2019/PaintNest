<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Paint_Nest_WebApp.test" %>


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
        <link href="lib/slick/slick.css" rel="stylesheet"/>
        <link href="lib/slick/slick-theme.css" rel="stylesheet"/>
        <!-- w3school styleshett for side tabs-->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>

         <!-- STYLESHEET FROM ADMINLTE  -Google Font: Source Sans Pro -->
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
          <!-- Font Awesome Icons -->
            <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css"/>
           <!-- overlayScrollbars -->
            <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>
           <!-- SweetAlert2 -->
            <link rel="stylesheet" href="../../plugins/sweetalert2/sweetalert2.min.css">
           <!-- Toastr -->
            <link rel="stylesheet" href="../../plugins/toastr/toastr.min.css">
           <!-- Theme style -->
            <link rel="stylesheet" href="dist/css/adminlte.min.css"/>

        
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

<style>
    /* The popup form - hidden by default */
#popForm {
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
    

    <!-- Profile Block-->
 

      <form runat="server" >
         <table>
        <asp:GridView CssClass="Grid" ID="gv" runat="server" AutoGenerateColumns="False">
            <Columns>
                
                <asp:TemplateField>
                   <%-- <ItemTemplate>
                        <asp:HyperLink
                            ID="MyLink" Target="_blank"
                            NavigateUrl='<%# Eval("Id", "~/ImageHandler.ashx?id={0}")  %>'
                            runat="server">
Display
                        </asp:HyperLink>
                    </ItemTemplate>--%>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Id", "~/ImageHandler.ashx?id={0}")  %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </table>
          <br />
          <br />
          <br />
 

        </form>
        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
        
        <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>


