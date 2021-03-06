﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edituser.aspx.cs" Inherits="NewFolder1_edituser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            margin-left: 25px;
        }
        .auto-style2 {
            left: -7px;
            top: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
     <div>
   <!-- <body class="fixed-nav sticky-footer bg-dark" id="page-top">
   Navigation-->
 <!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">HEALTH AND FITNESS</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="dashboard.aspx">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
          
      <!--  <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Teacher Details">
         <a class="nav-link" href="doctor.aspx">
              <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Doctor Details</span>
          </a>
        </li>
            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Student Details">
          <a class="nav-link" href="chat.aspx">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Users Details</span>
          </a
              </li>
      
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Course Details">
           <a class="nav-link" href="status.aspx">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Status</span>
          </a>
              </li>
             <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Course Details">
           <a class="nav-link" href="Signin.aspx">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Logout</span>
          </a>
              </li>
     
         
      </ul>
     <!-- <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <!--<li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>-->
      </ul>
    </div>
  </nav>

        <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="editdoctor.aspx">Edit profile</a>
        </li>
        <li class="breadcrumb-item active">profile Details</li>
      </ol>
      <!-- Icon Cards-->
      <div class="row">
        <div class="auto-style2">
         <!-- <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-comments"></i>
              </div>
              <div class="mr-5">DOCTORS Details</div>
            </div>
            <a class="card-footer text-white clearfix small z-1" href="doctor.aspx">
              <span class="float-left">View Details</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>
          </div>-->
        </div>
          <asp:GridView ID="grdstudent" runat="server" AutoGenerateColumns="false" width="100%" OnRowEditing="grdstudent_RowEditing" OnRowUpdating="grdstudent_RowUpdating" OnRowDeleting="grdstudent_RowDeleting" CssClass="auto-style1">
                <AlternatingRowStyle BackColor="Yellow" />
                <Columns>
               <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="lblfirstname" runat="server" Text='<%#Bind("fname") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtfirstname" runat="server" Text='<%#Bind("fname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="lbllastname" runat="server" Text='<%#Bind("lname") %>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtlastname" runat="server" Text='<%#Bind("lname") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="lblpass" runat="server" Text='<%#Bind("password") %>'></asp:Label>
                        </ItemTemplate>
                       <EditItemTemplate>
                            <asp:TextBox ID="txtpass" runat="server" Text='<%#Bind("password") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="lblgender" runat="server" Text='<%#Bind("gender") %>'></asp:Label>
                        </ItemTemplate>
                       <EditItemTemplate>
                            <asp:TextBox ID="txtgender" runat="server" Text='<%#Bind("gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                 
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="lblcourse" runat="server" Text='<%#Bind("address") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtcourse" runat="server" Text='<%#Bind("address") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                                 
                    <asp:TemplateField HeaderText="Contact">
                        <ItemTemplate>
                            <asp:Label ID="lblcontact" runat="server" Text='<%#Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                       <EditItemTemplate>
                            <asp:TextBox ID="txtcontact" runat="server" Text='<%#Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                          </asp:TemplateField>
                       <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnstuedit" runat="server" CssClass="btn btn-primary" Text="Edit" CommandName="Edit"/>
                          
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnstuupdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                            <asp:Button ID="btnstucancel" runat="server" CssClass="btn btn-warning" Text="Cancel" CommandName="Update" />
                        </EditItemTemplate>
                  
                    </asp:TemplateField>
                   
                </Columns>
            </asp:GridView>
      </div>
               <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    
    </div>
     <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
    </div>
    </form>
</body>
</html>
