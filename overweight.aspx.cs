using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class overweight : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MONDAY.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("TUESDAY.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("WEDNESDAY.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("THURSDAY.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("FRIDAY.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("SATURDAY.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("SUNDAY.aspx");
    }
}