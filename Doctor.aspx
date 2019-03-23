<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Doctor.aspx.cs" Inherits="Doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fitness website</title>
     
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="img/wpf-favicon.png"/>
  
    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    
	   <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
  
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    
     <style type="text/css">
        .auto-style2 {
            left: 49px;
            bottom: -61px;
            margin-left: 212px;
            margin-top: 0px;
        }
         .auto-style3 {
             margin-left: 276px;
         }
         .auto-style4 {
             border-radius: 4px;
             -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
             box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
             position: relative;
             height: 221px;
             left: 0px;
             top: 19px;
             border: 1px solid transparent;
             margin-bottom: 20px;
             padding: 35px;
             background-color: #808080;
         }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--->
    
</head>
<body  style="background-image:url(profile.jpg);">
    <form id="form1" runat="server">
   <div>
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation"> <div class="container">
          <div class="navbar-header">
            <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- LOGO -->
            <!-- TEXT BASED LOGO -->
            <a class="navbar-brand" href="index.html">Fitness <span>And Health</span></a>            
            <!-- IMG BASED LOGO  -->
             <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->           
                   
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
              

          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>

<div class="con container">
	<div class="row well">
		<div class="new1 col-md-2">
    	   <ul class="new nav nav-pills nav-stacked well">
              <!--<li  class="active"><a href="#"><i class="fa fa-envelope"></i> Compose</a></li>-->
              
              <li><a href="Doctor.aspx"><i class="fa fa-user"></i> Profile</a></li>
               <li><a href="chat.aspx"><i class="fa fa-user"></i> Discussion Forum Section</a></li>
               
           <li><a href="NewFolder1/editdoctor.aspx"><i class="fa fa-user"></i>Edit Profile</a></li>
                <li><a href="Signin.aspx"><i class="fa fa-user"></i>Logout</a></li>
              <li>
                <!--  <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click"/></li>-->
            </ul>
        </div>
        <div class="col-md-10" style="padding: 0px;">
                <div class="auto-style4">
                 <asp:Image ID="Image3" class="pic img-circle" runat="server" Height="179px" Width="297px" CssClass="auto-style2" />
             <!--       <div class="name"><small>Dr. S.P. Singh</small></div>
<!--  <a href="#" class="btn btn-xs btn-primary pull-right" style="margin:10px;"><span class="glyphicon glyphicon-picture"></span> Change cover</a>-->
                      </div>
                
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="txtmsg" runat="server" Height="18px" Width="295px" CssClass="auto-style3"></asp:Label>
                
   <br /><br /><br />
     <div class="col-lg-12">
    
    <div class="panel-wrapper">
    	<div class="panel2">
        	<div class="title2"> <h4>Doctor Information</h4> </div>
              </div>
            
              
               <div class="title3 col-lg-6">
               <div class="form-group">
                	<label for="exampleInputfname">First Name :</label>
                    <asp:Label ID="Label1" runat="server" Height="16px" Width="359px"></asp:Label>
                	
                	
			  </div>
                    <div class="form-group">
                	<label for="exampleInputfname">Last Name :</label>
                    <asp:Label ID="Label2" runat="server" Height="16px" Width="359px"></asp:Label>
                	
                	
			  </div>
              	<div class="form-group">
                	<label for="exampleInputEmail1">Email Address : 
                    <asp:Label ID="Label3" runat="server" Height="17px" Width="337px"></asp:Label>
                    </label>
                	
              	</div>
              	 <div class="form-group">
                	<label for="exampleInputfname">Gender : 
                     <asp:Label ID="Label4" runat="server" Height="18px" Width="349px"></asp:Label>
                     </label>
                	
              	</div>
                    <div class="form-group">
                	<label for="exampleInputfname">Date Of Birth : 
                        <asp:Label ID="Label5" runat="server" Height="16px" Width="343px"></asp:Label>
                        </label>
                	
              	</div>
			   </div>
               <div class="title3 col-lg-6">
                
                <div class="form-group">
                	<label for="exampleInputLname">Contact :</label>
                	 <asp:Label ID="Label6" runat="server" Height="16px" Width="359px"></asp:Label>
              	</div>
              	<div class="form-group">
                	<label for="exampleInputEmail1">Spelization :</label>	
                       <asp:Label ID="Label7" runat="server" Height="16px" Width="359px"></asp:Label>
              	</div>
                
                    <div class="form-group">
                	<label for="exampleInputfname">Address :</label>
                  
                       <asp:Label ID="Label9" runat="server" Height="16px" Width="359px"></asp:Label>
                   </div>
			   </div>
           
            </div>
          
   
        
       
                        <asp:GridView ID="grdstureq" runat="server" AutoGenerateColumns="false" Width="100%" EmptyDataText="No data available." OnRowCancelingEdit="grdstureq_RowCancelingEdit" CaptionAlign="NotSet" OnRowUpdating="grdstureq_RowUpdating">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>Student Email</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblstuemail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>Student Name</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblstuname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>Student Contact</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblstusub" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>Student Gender</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblstugender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>Option</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnConfirm" runat="server" Text="Confirm" data-toggle="modal" data-target="#myModal" CssClass="btn btn-success" CommandName="update"></asp:LinkButton>
                                        <asp:LinkButton ID="lnkbtnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" CommandName="cancel"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />
                        <br />
                        <asp:Label ID="lblsucmsg" runat="server"></asp:Label>
                    </div>

                </div>
            </div>


        </div>

        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <br />
                    <br />
                    <form class="form-horizontal">
                        <fieldset>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="body">Body :</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="number1" runat="server" placeholder="Message Body" CssClass="form-control input-md" ></asp:TextBox>
                                </div>
                            </div>

                            <!-- Textarea -->
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="message">Message :</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="message1" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Button -->
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="send"></label>
                                <div class="col-md-8">
                                    <button id="send" name="send" class="btn btn-primary">Send</button>
                                </div>
                            </div>

                        </fieldset>
                    </form>

                </div>
            </div>
        </div>

        <div class="container">
            <%-- <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>

            <!-- Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Send Message</h4>
                        </div>
                        <div class="modal-body">
                            <asp:Label ID="lblcontact" runat="server" Text="Contact" Font-Size="Larger" CssClass="form-group" BorderStyle="None"></asp:Label>
                            <asp:TextBox ID="txtcontact" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>

                            <asp:Label ID="lblmsg" runat="server" Text="Message"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>

                        </div>
                        <div class="modal-body">
                            <asp:Button ID="btnsend" runat="server" Text="Send" CssClass="btn-primary" UseSubmitBehavior="false"  OnClick="btnsend_Click" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!--=========== BEGIN FOOTER SECTION ================-->

        <!-- Start footer top area -->

        <!-- Start footer bottom area -->
        <div class="footer_bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="footer_bootomLeft">
                            <p>Copyright &copy; All Rights Reserved</p>
                        </div>
                    </div>

                </div>
            </div>
         </div>

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
        <!--=============================================== 
    Template Design By WpFreeware Team.
    Author URI : http://www.wpfreeware.com/
  ====================================================-->

    </form>
</body>
</html>

