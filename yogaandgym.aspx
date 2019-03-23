<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yogaandgym.aspx.cs" Inherits="yogaandgym" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="gym11.css">
    <style type="text/css">
        .auto-style1 {
            margin-left: 416px;
        }
        .auto-style2 {
            margin-left: 420px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">


<h2 style="color:blue; font-family:verdana; text-align:center; background-color:black;">FITNESS CLUB</h2>


  <img src="yogaandgym/12.jpg" alt="Notebook" style="width:100%; height:100%;">
 
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="yogaandgym/img_5terre.jpg">
	
      <img src="yogaandgym/yoga-fitness-apps-1024x683.jpg" alt="Cinque Terre" width="1000" height="1000">
	  

    </a>
    <div class="desc"> Yoga is the most favourable method to connect to the nature by balancing the mind-body connection. 
	It is a type of exercise which performed through the balanced body and need to get control over diet, 
	breathing, and physical postures.</div>
  </div>
</div>
 

<div class="responsive1">
  <div class="gallery">
    <a target="_blank" href="yogaandgym/img_forest.jpg" href="gym.html">
	
      <img src="yogaandgym/workout-habits.jpg" alt="Forest" width="1000" height="1000">
    </a>
    <div class="desc">Physically exercises are great for our muscles, heart, and lungs. 
Some more advantages of the physical activities are:
 it builds our bones strong, saves us from obesity by promoting a healthy weight, saves us from diabetes,
 keeps us away from cancer, prevents high blood pressure, and other major problems. </div>
  </div>
</div>


  
  <div class="content">
    <h1>HEALTH AND FITNESS</h1>
    <p>HEALTH and FITNESS Both are necessary for the human being to live a happy and healthy life. 
	There is no alternate to the health and fitness, we have to eat healthy food timely,
	do physical exercises daily, think positive and have patience and commitment towards good lifestyle.
	Being involved in physical activities on daily basis does something great to our body and mind.
	Regular physical activities also reduces stress, improves sleep, boosts energy level, reduces symptoms of anxiety and depression,
	increases our self-esteem, makes us feel proud, improves confidence level and personality, etc.

</p>
<!--<button class="btn success">YOGA</button>
<button class="btn info">GYM</button>
  <asp:Button ID="Button3" runat="server" Text="YOGA" OnClick="Button3_Click"/></li><br />
  <asp:Button ID="Button1" runat="server" Text="GYM" OnClick="Button1_Click"/></li><br />-->
         <asp:button runat="server" text="YOGA" class="wpcf7-submit" name="Yoga" value="Login" OnClick="Button3_Click" CssClass="auto-style1" Height="45px" Width="751px"/><br /><br/>
         <asp:button runat="server" text="GYM" class="wpcf7-submit" name="Gym" value="Login"  OnClick="Button1_Click" CssClass="auto-style2" Height="45px" Width="751px"/><br />
  </div>
</div>
        </form>
</body>
</html>