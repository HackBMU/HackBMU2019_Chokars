using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminregister : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    private object txtname;

    protected void Page_Load(object sender, EventArgs e)
    { }

    protected void btnsubmit_click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_adminregister1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@username", TextBox1.Text.ToString());
        cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text.ToString());
        cmd.Parameters.AddWithValue("@lastname", txtlastname.Text.ToString());
        cmd.Parameters.AddWithValue("@Email", txtmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());

        cmd.Parameters.AddWithValue("@Action", "insert");
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('registered successfully');</script>");
        }
        catch (Exception exc)
        {
            throw exc;
        }
        finally
        {
            con.Close();
        }

    }
    protected void clrbtn_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        txtfirstname.Text = "";
        txtlastname.Text = "";
        txtmail.Text = "";
        txtpassword.Text = "";

    }
}

