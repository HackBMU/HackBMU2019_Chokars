<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gymkanpur.aspx.cs" Inherits="gymkanpur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body background="yogaandgym/8.jpg" >
    <form id="form1" runat="server">
   <h1 style="color:blue; font-family:verdana; text-align:center; background-color:black;">BEST GYM TRAINING CENTER IN KANPUR </h1>

<table id="customers">
  <tr>
    <th>NAME</th>
    <th>CONTACT</th>
    <th>LOCATION</th>
  </tr>
  <tr>
    <td>The Fit Club Kanpur</td>
    <td>078510 06009</td>
    <td>113/183-A Near K. V. M. Girls Inter College, Swaroop Nagar, Kanpur, Uttar Pradesh 208002</td>
  </tr>
  <tr>
    <td>Gold's Gym</td>
    <td> 084000 23000</td>
    <td>113/4 G, Moti Jheel Ave, Swaroop Nagar, Kanpur, Uttar Pradesh 208003</td>
  </tr>
  <tr>
    <td>MYO Fitness</td>
    <td>099976 00412</td>
    <td>6/25e,First Floor, 1 Parwati Bagla Road, Adjacent to Rave 3 Mall Near Hotel Vijay Intercontinental, Uttar Pradesh 208002
</td>
  </tr>
  <tr>
    <td>8ABS Gym</td>
    <td> 090444 05342</td>
    <td> Keshav Nagar, Juhi Kalan, Saket Nagar, Kanpur, Uttar Pradesh 208014</td>
  </tr>
  <tr>
    <td>Titan Fitness</td>
    <td>091987 07070</td>
    <td>128/24, B Block, Kidwainagar Ave, Kidwai Nagar, Kanpur, Uttar Pradesh 208011</td>
  </tr>
  <tr>
    <td>Muscle Mechanics</td>
    <td>099567 94794</td>
    <td>117/N/26, Avon Market, Near Neer Cheer Chauraha, Above Baroda Uttar Pardesh Gramin Bank, Kakadeo, Kanpur, Uttar Pradesh 208025</td>
  </tr>
  
</table>
</form>
</body>
</html>
