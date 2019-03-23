<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <style type="text/css">
        .auto-style2 {
            left: 49px;
            bottom: -61px;
            margin-left: 212px;
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            border-radius: 4px;
            -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            position: relative;
            height: 221px;
            left: -7px;
            top: 9px;
            border: 1px solid transparent;
            margin-bottom: 20px;
            padding: 35px;
            background-color: #808080;
        }
    </style>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--->
    
</head>
<body  style="background:linear-gradient(#FFC107,#19fd36)">
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
          
              
             <li><a href="bmi.aspx"><i class="fa fa-user"></i>Diet Plan</a></li>
                 <li><a href="yogaandgym.aspx"><i class="fa fa-user"></i>Yoga and Gym Maintaining Fitness Center </a></li>
               
                 <li><a href="chat.aspx"><i class="fa fa-user"></i>Discussion Forum</a></li>
               
       
                 <li><a href="NewFolder1/edituser.aspx"><i class="fa fa-user"></i>Edit Profile</a></li>
                 <li><a href="selectdoctor.aspx"><i class="fa fa-user"></i>Connect To Doctor</a></li>
               <li><a href="Signin.aspx"><i class="fa fa-user"></i>LOGOUT</a></li>
              <li>
                  


            </ul>
        </div>
        <div class="col-md-10" style="padding: 0px;">
                <div class="auto-style4">
                 <!--   <img class="pic img-circle" src="img/author.jpg" alt="...">-->
                      <asp:Image ID="Image3" class="pic img-circle" runat="server" Height="179px" Width="297px" CssClass="auto-style2" />

<!--  <a href="#" class="btn btn-xs btn-primary pull-right" style="margin:10px;"><span class="glyphicon glyphicon-picture"></span> Change cover</a>-->
                </div>
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtmsg" runat="server" Height="18px" Width="273px" CssClass="auto-style3"></asp:Label>
                
   <br />
                <br />
                <br /><br />
     <div class="col-lg-12">
    
    <div class="panel-wrapper">
    	<div class="panel2">
        	<div class="title2"> <h4>User Information</h4> </div>
              </div>
                     </label>
                	
              
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
                	<label for="exampleInputfname">Address :</label>
                    <asp:Label ID="Label9" runat="server" Height="16px" Width="359px"></asp:Label>
                	
                	
			  </div>
			   </div><br /><br /><br />
    <!--    <asp:Button ID="Button1" runat="server" Text="contact with Doctor" style="height:50px;width:200px;"  BorderStyle="Solid" CssClass="auto-style1"/></li>-->
    
    </div>
    </form>
</body>
</html>
