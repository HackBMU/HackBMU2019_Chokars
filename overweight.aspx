<%@ Page Language="C#" AutoEventWireup="true" CodeFile="overweight.aspx.cs" Inherits="overweight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
div.container {
    width: 100%;
    border: 10px solid green;
}

/* For mobile phones: */
[class*="col-"] {
    width: 100%;
}
@media only screen and (min-width: 600px) {
    /* For tablets: */
    .col-m-1 {width: 8.33%;}
    .col-m-2 {width: 16.66%;}
    .col-m-3 {width: 25%;}
    .col-m-4 {width: 33.33%;}
    .col-m-5 {width: 41.66%;}
    .col-m-6 {width: 50%;}
    .col-m-7 {width: 58.33%;}
    .col-m-8 {width: 66.66%;}
    .col-m-9 {width: 75%;}
    .col-m-10 {width: 83.33%;}
    .col-m-11 {width: 91.66%;}
    .col-m-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
    /* For desktop: */
    .col-1 {width: 8.33%;}
    .col-2 {width: 16.66%;}
    .col-3 {width: 25%;}
    .col-4 {width: 33.33%;}
    .col-5 {width: 41.66%;}
    .col-6 {width: 50%;}
    .col-7 {width: 58.33%;}
    .col-8 {width: 66.66%;}
    .col-9 {width: 75%;}
    .col-10 {width: 83.33%;}
    .col-11 {width: 91.66%;}
    .col-12 {width: 100%;}
}



header, footer {
    padding: 1em;
    color: black;
background-color: green;
    clear: left;
    text-align: center;
background-image: url("-2131869236.jpg");
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 2em;
}


article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;

}* {
    box-sizing: border-box;
}
.row::after {
    content: "";
    clear: both;
    display: block;
}
[class*="col-"] {
    float: left;
    padding: 15px;
}

.col-3 {width: 15%;}

.menu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
.menu li {
    padding: 8px;
    margin-bottom: 7px;
    background-color : white;
    color: red;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}
.menu li:hover {
    background-color: grey;
}
.aside {
    background-color: orange;
    padding: 15px;
    color: #ffffff;
    text-align: center;
    font-size: 14px;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}

.button {
  display: inline-block;
  border-radius: 50%;
  background-color: white;
  border: none;
  color: black;
  text-align: center;
  font-size: 30px;
  padding: 20px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;

}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}
.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="container">
<header>
   <h1><strong>OVER-WEIGHT DIET CHART PLAN</strong></h1>
</header>
  
<div class="row">
<div class="col-3 menu" >
<ul>
    <li><a href="#">Normal Diet Plan</a></li>
    <li><a href="#">Obesity Diet Plan</a></li>
    <li><a href="#">UnderWeight Diet Plan</a></li>
  </ul>
</div>
<div class="col-6 col-m-9">
<h1>NOTE</h1>
<p>All the meal plans should be followed in sequence for better results.</p>
<img src="imagediet/-657909070.jpg" width="500" height="400">
</div>



<div class="col-3 col-m-12">
<div class="aside">


    <asp:Button ID="Button1" runat="server" Text="MONDAY" onclick="Button1_Click" Width="149px"/><br /><br /><br />
     <asp:Button ID="Button2" runat="server" Text="TUESDAY" onclick="Button2_Click" Width="146px"/><br /><br /><br />
     <asp:Button ID="Button3" runat="server" Text="WEDNESDAY" onclick="Button3_Click" Width="146px"/><br /><br /><br />
     <asp:Button ID="Button4" runat="server" Text="THURSDAY" OnClick="Button4_Click" Width="153px" /><br /><br />
     <br /><asp:Button ID="Button5" runat="server" Text="FRIDAY" onclick="Button5_Click" Width="144px"/><br /><br />
     <asp:Button ID="Button6" runat="server" Text="SATURDAY" onclick="Button6_Click" Width="149px"/><br /><br /><br />
     <asp:Button ID="Button7" runat="server" Text="SUNDAY" onclick="Button7_Click" Width="136px"/><br /><br /><br />

    









</div>
</div>

</form>
</body>

</html>