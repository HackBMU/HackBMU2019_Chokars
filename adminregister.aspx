<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="adminregister.aspx.cs" Inherits="adminregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>ADMIN REGISTER</title>
<style>
body {
    background-image: url("profile.jpg");
    background-repeat: no-repeat;
  background-size:100% 100%;
}
</style>
   
</head>
<body style="text-align:center;">
    
   <!-- <image src="deepak.jpg" width="100%">-->
   <div style="margin:300px;" class="hi">
     <font size="12">WECOME TO</font>
    <form id="form1" runat="server">
        <div>
       
             
            <div style="background-color:hotpink;"class="sr">
            <h1 >ADMIN REGISTER</h1></div>
          <div style="background-color:grey;"class="srS">
  
              <form action="#" class="submitphoto_form" method="post">  
                    
                  <br />
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* please enter user name " ControlToValidate="TextBox1"  ForeColor="Red"> </asp:RequiredFieldValidator><br />
          
                   USERNAME:     <asp:TextBox ID="TextBox1" runat="server" class="wp-form-control wpcf7-text" placeholder="username"></asp:TextBox>
                            <br />
                  <br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* please enter first name" ControlToValidate="txtfirstname"  ForeColor="Red"> </asp:RequiredFieldValidator><br />
              FIRST NAME  :  <asp:TextBox ID="txtfirstname" runat="server" class="wp-form-control wpcf7-text" placeholder="first Name"></asp:TextBox>
                        
                   <br />
                  <br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* please enter last name" ControlToValidate="txtlastname"  ForeColor="Red"> </asp:RequiredFieldValidator><br />
             LAST NAME     :  <asp:TextBox ID="txtlastname" runat="server" class="wp-form-control wpcf7-text" placeholder="last Name" ></asp:TextBox>
                  
                     <br />
                  <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* please enter e-mai" ControlToValidate="txtmail"  ForeColor="Red"> </asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator><br />

              E-MAIL {@}  :   <asp:TextBox ID="txtmail" runat="server" class="wp-form-control wpcf7-email" placeholder="E-mail" ></asp:TextBox>
               
                           <br />
                  <br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* please enter the password" ControlToValidate="txtpassword"  ForeColor="Red"> </asp:RequiredFieldValidator><br />
                PASSWORD  :  <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" class="wp-form-control wpcf7-password" placeholder="Password"  ></asp:TextBox>
                           
                      <br />
                  <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*  please enter the confirm password" ControlToValidate="TextBox2"  ForeColor="Red"> </asp:RequiredFieldValidator><br />
                 C PASSWORD:  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="wp-form-control wpcf7-password" placeholder="Confirm Password"  ></asp:TextBox>
                     
                    <br />
                  <br />
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="wpcf7-submit" OnClick="btnsubmit_click"/>
                       <asp:Button ID="btnsubmitt" runat="server" Text="Reset" CssClass="wpcf7-submit" OnClick="clrbtn_Click" />          <br />
                  <br />
   </form>
        </div>
            </div>
           </div>     
   
    </form>
     
</body>
</html>