<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Otp.aspx.cs" Inherits="Otp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>Health and fitness website</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="online/img/tutor.png"/>

    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="online/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="online/css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="online/css/superslides.css">
    <!-- Slick slider css file -->
    <link href="online/css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="online/css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="online/css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="online/css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  <div class="container">
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
              <a class="navbar-brand" href="index.aspx">Health <span>Fitness</span></a>              
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->            
                     
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                <li class=""><a href="index.aspx">Home</a></li>
             
                     
                <li><a href="Signin.aspx">Sign In</a></li>
<%--                <li><a title="new user" href="TeacherRegister.aspx">Sign Up</a></li>--%>
                  
                 <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sign Up<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                   <!-- <li><a href="AdminRegister.aspx">Admin Register</a></li>-->
                    <li><a href="DoctorSignup.aspx">Doctor Register</a></li>
                    <li><a href="usersignup.aspx">User Register</a></li>               
                  </ul>
                </li>      
              </ul>           
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
    <!--=========== END HEADER SECTION ================--> 
         <section id="imgBanner" style="background-image:url(image-bg.jpg); height:500px;">
      <h2>Forget Password</h2>
             
    </section>

    <!--=========== BEGIN SLIDER SECTION ================-->
   
    <!--=========== END COURSE BANNER SECTION ================-->
    
    <!--=========== BEGIN CONTACT SECTION ================-->
    <section id="contact" >
      <div class="container">
       <div class="row">
          <div class="col-lg-12 col-md-12"> 
            <div class="title_area">
              <h2 class="title_two">Verify Otp</h2>
              <span></span> 
              
            </div>
          </div>
       </div>
           <div class="row" >
         <div class="col-lg-8 col-md-8 col-sm-8" >
           <div class="contact_form wow fadeInLeft">



              <form action="signin.php" class="submitphoto_form" method="post">
                  <asp:TextBox ID="TextBox2" runat="server" class="wp-form-control wpcf7-email" name="username" placeholder="Enter the OTP" ></asp:TextBox>          
                 
                <asp:button runat="server" text="Verify" class="wpcf7-submit" name="login" value="Login" OnClick="Unnamed_Click" />
                  <asp:Label ID="txtmsg" runat="server"></asp:Label>
              </form>
           </div>
         </div>
    </div>
           </div>
    </div>
    </section>
    </div>
    </form>
</body>
</html>
