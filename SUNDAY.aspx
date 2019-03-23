<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SUNDAY.aspx.cs" Inherits="SUNDAY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 4px;
}

th {
    background-color: blue;
    color: white;
}

tr:nth-child(even){background-color: pink;
}
div.cities {
    background-color: lightgreen;
    color: black;
    margin: 20px 0 20px 0;
    padding: 20px;
}
div.WEEKS {
    background-color: orange;
    color: black;
    padding: 14px;
}


</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Weekly Diet Schedule</h1>

<div class="WEEKS">
<h2>SUNDAY</h2>
<div class="cities">
<h2>BREAKFAST</h2>

<table>
  <tr>
    <th>FOOD-STUFF</th>
    <th>QUANTITY</th>
    <th>CALORIE</th>
  </tr>
  <tr>
    <td>Peter</td>
    <td>Griffin</td>
    <td>$100</td>
  </tr>
  <tr>
    <td>Lois</td>
    <td>Griffin</td>
    <td>$150</td>
  </tr>
  <tr>
    <td>Joe</td>
    <td>Swanson</td>
    <td>$300</td>
  </tr>
  <tr>
    <td>Cleveland</td>
    <td>Brown</td>
    <td>$250</td>
  </tr>
</table>
</div>

<div class="cities">
<h2>LUNCH</h2>

<table>
  <tr>
    <th>FOOD-STUFF</th>
    <th>QUANTITY</th>
    <th>CALORIE</th>
  </tr>
  <tr>
    <td>Peter</td>
    <td>Griffin</td>
    <td>$100</td>
  </tr>
  <tr>
    <td>Lois</td>
    <td>Griffin</td>
    <td>$150</td>
  </tr>
  <tr>
    <td>Joe</td>
    <td>Swanson</td>
    <td>$300</td>
</tr>
  <tr>
    <td>Cleveland</td>
    <td>Brown</td>
    <td>$250</td>
  </tr>
</table>
</div>
<div class="cities">
<h2>DINNER</h2>

<table>
  <tr>
    <th>FOOD-STUFF</th>
    <th>QUANTITY</th>
    <th>CALORIE</th>
  </tr>
  <tr>
    <td>Peter</td>
    <td>Griffin</td>
    <td>$100</td>
  </tr>
  <tr>
    <td>Lois</td>
    <td>Griffin</td>
    <td>$150</td>
  </tr>
  <tr>
    <td>Joe</td>
    <td>Swanson</td>
    <td>$300</td>
</tr>
  <tr>
    <td>Cleveland</td>
    <td>Brown</td>
    <td>$250</td>
  </tr>
</table>
</div>
</div>

    </div>
    </form>
</body>
</html>
