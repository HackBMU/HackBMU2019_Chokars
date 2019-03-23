<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectdoctor.aspx.cs" Inherits="selectdoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Health and Fitness</title>
   
    <style type="text/css">
        .auto-style1 {
            height: 40px;
            width: 1160px;
        }
    </style>
   
</head>
<body style="background-image:url('images/doc4.jpg'); height:auto;width:auto; text-align:center; margin-left: 319px;">
    <h1 style="font-style:italic;font-size:80px;">Choose the doctor According to your need</h1>
    <br /><br />
    <form id="form1" runat="server" style="margin-right:50px;">
         <asp:Label ID="lblselsub" runat="server" Class="col-sm-3" Font-Size="X-Large"><h3>Select Spelization</h3></asp:Label>
    <div style="text-align:center; height:400px;width:400px;">
    
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Height="624px">
             <div class="form-group">
            <div class="auto-style1">
                <asp:DropDownList ID="ddlselsub" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlselsub_SelectedIndexChanged" CssClass="form-control" Height="54px" Width="770px" style="margin-left: 411px">

                </asp:DropDownList>

            </div>
            <br /><br />
         <!--        <asp:Label ID="Label1" runat="server" Class="col-sm-3" Font-Size="X-Large"><h3>Select Gender</h3></asp:Label>
                 <div class="form-group">
                     <div class="col-sm-6">
                         <asp:DropDownList ID="ddlselexpteacher" runat="server" AutoPostBack="true" CssClass="form-control" Height="55px" OnSelectedIndexChanged="ddlselexpteacher_SelectedIndexChanged" style="margin-left: 34px" Width="805px">
                         </asp:DropDownList>
                     </div>
                 </div>
            <br /><br />-->

<asp:GridView ID="grdteacheronstudent" runat="server" AutoGenerateColumns="false" OnRowUpdating="grdteacheronstudent_RowUpdating" Width="1510px">
    <Columns>
<asp:TemplateField>
    <HeaderTemplate>Doctor Name</HeaderTemplate>
    <ItemTemplate>
        <asp:Label ID="lblteachername" runat="server" Text='<%# Eval("fname") %>'></asp:Label>

    </ItemTemplate>
</asp:TemplateField>
        <asp:TemplateField>
    <HeaderTemplate>Specilization</HeaderTemplate>
    <ItemTemplate>
        <asp:Label ID="lblteacherqualification" runat="server" Text='<%# Eval("specilization") %>'></asp:Label>

    </ItemTemplate>
</asp:TemplateField>
            <asp:TemplateField>
    <HeaderTemplate>Address</HeaderTemplate>
    <ItemTemplate>
        <asp:Label ID="address" runat="server" Text='<%# Eval("address") %>'></asp:Label>

    </ItemTemplate>
</asp:TemplateField>
        <asp:TemplateField>
    <HeaderTemplate>Email</HeaderTemplate>
    <ItemTemplate>
        <asp:Label ID="lbltemail" runat="server" Text='<%# Eval("email") %>'></asp:Label>

    </ItemTemplate>
</asp:TemplateField>
        <asp:TemplateField>
    <HeaderTemplate>Action</HeaderTemplate>
    <ItemTemplate>
        <asp:LinkButton ID="lnkbtnsend" runat="server" Text="Send Request" CommandName="update"></asp:LinkButton>

    </ItemTemplate>
</asp:TemplateField>
    </Columns>


</asp:GridView>
</div>




    
    <!--=========== BEGIN FOOTER SECTION ================-->
   
      <!-- Start footer top area -->
     
      <!-- Start footer bottom area -->
      <div class="footer_bottom">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="footer_bootomLeft">
               </div>
            </div>
            
          </div>
        </div>
      </div>
      <!-- End footer bottom area -->
  
    <!--=========== END FOOTER SECTION ================--> 

  

    <!-- Javascript Files
    ================================================== -->

    <!-- initialize jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Preloader js file -->
    <script src="js/queryloader2.min.js" type="text/javascript"></script>
    <!-- For smooth animatin  -->
    <script src="js/wow.min.js"></script>  
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.animate-enhanced.min.js"></script>
    <script src="js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>   
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="js/jquery.tosrus.min.all.js"></script>   
   
    <!-- Custom js-->
    <script src="js/custom.js"></script>




        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
