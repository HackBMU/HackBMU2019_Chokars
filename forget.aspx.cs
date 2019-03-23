using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class forget : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session["f"] = 1;
        try
        {
            string ltype = logintype.Text;
            if (ltype == "User")
            {

                Random random = new Random();
                int value = random.Next(1001, 9999);
                string destinationaddr = "91" + TextBox1.Text;
                string message = "Your OTP Number is " + value + " ( Sent By : PSIT Study Hub )";
                //Label3.Text = message;
                String message1 = HttpUtility.UrlEncode(message);

                using (var wb = new WebClient())
                {
                    byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "sThJUoZFyeo-2BNH86OmgD0MIqbjeZSdMKXFrijxgA"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                   
                    Session["otp"] = value;
                    Response.Redirect("otp.aspx");
                    }
                }
            



        

            if (ltype == "Doctor")
            {

                Random random = new Random();
                int value = random.Next(1001, 9999);
                string destinationaddr = "91" + TextBox1.Text;
                string message = "Your OTP Number is " + value + " ( Sent By : PSIT Study Hub )";
                //Label3.Text = message;
                String message1 = HttpUtility.UrlEncode(message);

                using (var wb = new WebClient())
                {
                    byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "sThJUoZFyeo-2BNH86OmgD0MIqbjeZSdMKXFrijxgA"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                   
                    Session["otp"] = value;
                    Response.Redirect("otp.aspx");
                }
            } 
                    
                
            



          
        }
        catch (Exception)
        {
            txtmsg.Text = "please select any option";
        }
    }

}