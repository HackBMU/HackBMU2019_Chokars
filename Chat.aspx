<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 543px;
        }
        .auto-style2 {
            height: 338px;
            width: 543px;
        }
        .auto-style3 {
            height: 77px;
            width: 543px;
        }
        .auto-style4 {
            background-color: #9999FF;
        }
        .auto-style5 {
            background-color: #0000FF;
        }
        .auto-style6 {
            background-color: #3366FF;
        }
        .auto-style7 {
            width: 139px;
        }
        .auto-style8 {
            height: 338px;
            width: 139px;
        }
        .auto-style9 {
            height: 77px;
            width: 139px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            height: 80px;
            width: 139px;
        }
        .auto-style12 {
            height: 80px;
            width: 543px;
        }
        #Image1
        {
            border-radius:50%;
        }
    </style>
</head>
<body style="background-image:url(doc10.jpg);">
    <form id="form1" runat="server">
    <div style="text-align:center;">
    <table>
<tr>
<td colspan="2">
<asp:Image ID="Image1" runat="server" ImageUrl="doc5.jpg" Height="200px" Width="200px" /></td>
</tr>
<tr>
<td style="text-align: right" class="auto-style7">
</td>
<td style="text-align: center" class="auto-style1">
<strong><span style="font-size: 20px; color: #0000cc">DISCUSSION FORUM&nbsp;&nbsp;
</span></strong></td>
</tr>
<tr>
<td style="text-align: right" class="auto-style11">
<strong>UserName</strong>:</td>
<td class="auto-style12">
<asp:TextBox ID="txtname" runat="server" CssClass="auto-style10" Height="47px" Width="351px"></asp:TextBox>
<asp:Button ID="brnadd" runat="server" OnClick="brnadd_Click" Text="ADD" Font-Bold="true" CssClass="auto-style6" Height="47px" Width="129px" />
<asp:Label ID="lbluname" runat="server" Font-Bold="True" ForeColor="#004000"></asp:Label></td>
</tr>
<tr>
<td class="auto-style8">
</td>
<td class="auto-style2">
<%--<asp:TextBox ID=”txtmsg” runat=”server” Height=”250px” TextMode=”MultiLine” Width=”472px”></asp:TextBox>--%>
<iframe frameborder="no" height="515" scrolling="no" src="msg.aspx" width="515" class="auto-style4">
</iframe>

</td>
</tr>
<tr>
<td class="auto-style9">
</td>
<td class="auto-style3">
<table style="width: 480px">
<tr>
<td style="width: 100px; height: 50px;">
<asp:TextBox ID="txtsend" runat="server" Height="40px" TextMode="MultiLine" Width="384px" CssClass="auto-style4"></asp:TextBox></td>
<td style="width: 100px; height: 50px;">
<asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="SEND"
Width="72px" Font-Bold="True" CssClass="auto-style5" /></td>
</tr>
</table>
</td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
