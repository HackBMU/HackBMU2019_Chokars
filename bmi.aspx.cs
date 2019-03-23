using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bmi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       /* Response.Write("hello"+c);
        /* double a = 0;
        double b = 0;*/
        double a = double.Parse(txtfirst.Text);
        double b = double.Parse(TextBox1.Text);

        double c = a / (b * b);
        Response.Write(c);
        if(c<20)
        {
            Response.Redirect("underweight.aspx");

        }
        else
        {
            if(c>=20 && c<25)
            {
                Response.Redirect("normalbmi.aspx");

            }
            else
            {
                if(c>25 && c<=30)
                {
                    Response.Redirect("underweight.aspx");
                }
                else
                {
                    if(c>=30)
                    {
                        Response.Redirect("obesity.aspx");
                    }
                }
            }
        }
    }
}