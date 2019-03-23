using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Doctorotp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

        String mycon = "Data Source=DESKTOP-JNIJ4IS\\SQLEXPRESS;Initial Catalog=fitness;Integrated Security=True";
        String myquery = "Select * from doctorreg1 where email='" + Request.QueryString["email"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            String activationcode;
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            if (activationcode == txtusername.Text)
            {
                changestatus();
                Response.Write("<script>alert('Login  successfully..')</script>");
            //    txtmsg.Text = "Your Signup Has Been Verified Successfully.Kindly go to login page";
            }
            else
            {
                Response.Write("login not successfully");
                txtmsg.Text = "You Have Entered Invalid Activation Code, Kindly Check Your Mail Inbox";
            }
        }

        con.Close();

    }
    private void changestatus()

    {
        String mycon = "Data Source=DESKTOP-JNIJ4IS\\SQLEXPRESS;Initial Catalog=fitness;Integrated Security=True";
        String updatedata = "Update doctorreg1 set status='Verified' where email='" + Request.QueryString["email"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }

}