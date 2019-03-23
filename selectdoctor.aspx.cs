using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class selectdoctor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["email"] == null)
        {
            Response.Redirect("index.aspx");
            Session.RemoveAll();
        }
        else
        {

            if (!IsPostBack)
            {
                BindSubjectDdl();
                gridviewbind();
            }
        }
}

    protected void BindSubjectDdl()
    {

        SqlCommand cmd = new SqlCommand("select distinct specilization from doctorreg1", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        con.Close();
        ddlselsub.DataSource = ds;
        ddlselsub.DataTextField = "specilization";
        ddlselsub.DataBind();
        ddlselsub.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlselexpteacher.Items.Insert(0, new ListItem("--Select Experience--", "0"));
        gridviewbind();
    }

    protected void ddlselsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select distinct gender from doctorreg1 where specilization='" + ddlselsub.Text.ToString() + "' or gender = '" + ddlselexpteacher.Text.ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        con.Close();
        ddlselexpteacher.DataSource = ds;
        ddlselexpteacher.DataTextField = "gender";
        ddlselexpteacher.DataBind();
        ddlselexpteacher.Items.Insert(0, new ListItem("--Select Experience--", "0"));
        gridviewbind();
    }

    protected void ddlselexpteacher_SelectedIndexChanged(object sender, EventArgs e)
    {
        gridviewbind();
    }
    public void gridviewbind()
    {
        SqlCommand cmd = new SqlCommand("select *  from doctorreg1 where specilization='" + ddlselsub.Text.ToString() + "' or gender = '" + ddlselexpteacher.Text.ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        sda.Fill(dt);
        con.Close();
        grdteacheronstudent.DataSource = dt.Tables[0];
        grdteacheronstudent.DataBind();

    }


    protected void grdteacheronstudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string user_email = Session["email"].ToString();
        Label teacheremail = grdteacheronstudent.Rows[e.RowIndex].FindControl("lbltemail") as Label;
        SqlCommand cmd = new SqlCommand("spstatus12", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@user_email", user_email);
        cmd.Parameters.AddWithValue("@doc_email", teacheremail.Text.ToString());
        cmd.Parameters.AddWithValue("@status", "0");
        cmd.Parameters.AddWithValue("@isRequestsent", "1");
        cmd.Parameters.AddWithValue("@isRequestAccepted", "0");
        cmd.Parameters.AddWithValue("@query", "insert");
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Send successfully..')</script>");
        con.Close();


    }
}