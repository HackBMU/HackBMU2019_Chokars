<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>Health and fitness website</title>
     <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
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
<body >
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
                  <!--  <li><a href="AdminRegister.aspx">Admin Register</a></li>-->

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
      <h2>SIGN IN</h2>
             
    </section>

    <!--=========== BEGIN SLIDER SECTION ================-->
   
    <!--=========== END COURSE BANNER SECTION ================-->
    
    <!--=========== BEGIN CONTACT SECTION ================-->
    <section id="contact" style="background-color:black;">
      <div class="container" style="background-color:black;">
       <div class="row">
          <div class="col-lg-12 col-md-12"> 
            <div class="title_area">
              <h2 class="title_two">SIGN IN</h2>
              <span></span> 
              
            </div>
          </div>
       </div>
       <div class="row" style="background-color:black;">
         <div class="col-lg-8 col-md-8 col-sm-8" >
           <div class="contact_form wow fadeInLeft">
             
                 <asp:DropDownList ID="logintype" runat="server"   class="wp-form-control wpcf7-select" >
                      <asp:ListItem>---Select Login Type---</asp:ListItem>
                      <asp:ListItem>Admin</asp:ListItem>
                      <asp:ListItem>Doctor</asp:ListItem>
                      <asp:ListItem>User</asp:ListItem>
                  </asp:DropDownList>
                 
               
                <asp:TextBox ID="txtusername" runat="server" class="wp-form-control wpcf7-email" name="E-mail" placeholder="User Name" ></asp:TextBox>          
                   <asp:TextBox ID="txtpassword" runat="server" class="wp-form-control wpcf7-text" TextMode="Password" name="password" placeholder="Password"></asp:TextBox>
                <asp:button runat="server" text="SignIn" class="wpcf7-submit" name="login" value="Login" onclick="Unnamed_Click"/>
                  <br /><a href="forget.aspx" style="font-size:30px;color:blue;">Forgetten Password ?? click here</a>

                 <asp:Label ID="txtmsg" runat="server"></asp:Label>
              </form>
           </div>
         </div>
        
       </div>
      </div>
    </section>
    <!--=========== END CONTACT SECTION ================-->

    <!--=========== BEGIN GOOGLE MAP SECTION ================-->
    <!-- <section id="googleMap">
      <iframe width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=200+Lincoln+Ave,+Salinas,+CA,+USA&amp;aq=&amp;sll=30.977609,-95.712891&amp;sspn=42.157377,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=200+Lincoln+Ave,+Salinas,+California+93901-2639&amp;t=m&amp;z=14&amp;ll=36.674837,-121.657691&amp;output=embed"></iframe>
    </section> -->

       

         <!--=========== BEGIN FOOTER SECTION ================-->
   
    

    </div>
         <div class="footer" id="contact">
      <div class="container">
        <div class="col-md-6 contact">
          <h1>About Trainer</h1>
          <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, <br>
            vel illum dolore eu feugiat nulla facilisis at vero Duis autem vel eum iriure dolor in <br>
            hendrerit in vulputate velit esse eros et accumsan.</p>
          <p>Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl,<br>
            molestie sed egestas bibendum, varius eu diam.</p>
        </div>
        <div class="col-md-3 contact footer-menu">
          <h1>Social</h1>
          <ul>
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Github</a></li>
            <li><a href="#">Pinterest</a></li>
            <li><a href="#">Google Plus</a></li>
          </ul>
        </div>
        <div class="col-md-3 contact">
          <h1>Contact Us</h1>
          <p> Contact our 24/7 customer support if you have any questions. We'll help you out. </p>
          <a href="mailto:support@gmail.com">contact@iland.com</a> </div>
      </div>
    </div>
  </div>

         <footer id="footer">
      <!-- Start footer top area -->

      <!-- Start footer bottom area -->
      <div class="footer_bottom">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="footer_bootomLeft">
                <p> Copyright &copy; All Rights Reserved</p>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <!-- End footer bottom area -->
    </footer>
  
  <!-- Scroll To Top --> 
  
  <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a> 
  
  <!-- Scroll To Top Ends--> 
  
</div>
<!-- Main Section -->
</div>
<!-- Wrapper--> 

<!-- Jquery and Js Plugins --> 
<script type="text/javascript" src="js/jquery-2.1.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.min.js"></script> 
<script type="text/javascript" src="js/plugins.js"></script> 
<script type="text/javascript" src="js/menu.js"></script> 
<script type="text/javascript" src="js/custom.js"></script> 
<script src="js/jquery.subscribe.js"></script>

    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Preloader js file -->
    <script src="online/js/queryloader2.min.js" type="text/javascript"></script>
    <!-- For smooth animatin  -->
    <script src="online/js/wow.min.js"></script>  
    <!-- Bootstrap js -->
    <script src="online/js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="online/js/slick.min.js"></script>
    <!-- superslides slider -->
    <script src="online/js/jquery.easing.1.3.js"></script>
    <script src="online/js/jquery.animate-enhanced.min.js"></script>
    <script src="online/js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>   
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="online/js/jquery.tosrus.min.all.js"></script>   
   
    <!-- Custom js-->
    <script src="online/js/custom.js"></script>
    
</body>
</html>
