using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Otp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == Session["otp"].ToString())
        {
           // Panel2.Visible = false;
          //  Label3.Text = "Your Mobile Number Has Been Verified Successfully - Thanks";
            Response.Redirect("changepass.aspx");
        }
        else
        {
            Response.Write("not ghghgh");
            // Label3.Text = "OTP Number is Not Correct : Your Mobile Number not Verified";
            // Panel2.Visible = true;
        }
    }
  
    }
