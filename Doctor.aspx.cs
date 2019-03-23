using System;

using System.Collections;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;
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
using System.Web.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;


using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;
public partial class Doctor : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["Constr"].ConnectionString;

    string str;

    SqlCommand com;
    private object cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        txtmsg.Text = "<b><font color=Brown>" + "WELLCOME:: " + "</font>" + "<b><font color=green>" + Session["email"] + "</font>";

        SqlConnection con = new SqlConnection(strConnString);

        con.Open();

        str = "select * from doctorreg1 where email='" + Session["email"] + "'";

        com = new SqlCommand(str, con);

        SqlDataAdapter da = new SqlDataAdapter(com);

        DataSet ds = new DataSet();

        da.Fill(ds);

        Label1.Text = ds.Tables[0].Rows[0]["fname"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["lname"].ToString();
        Label3.Text = ds.Tables[0].Rows[0]["email"].ToString();
        Label4.Text = ds.Tables[0].Rows[0]["gender"].ToString();
        Label5.Text = ds.Tables[0].Rows[0]["dob"].ToString();
        Label6.Text = ds.Tables[0].Rows[0]["contact"].ToString();
        Label7.Text = ds.Tables[0].Rows[0]["specilization"].ToString();



        Label9.Text = ds.Tables[0].Rows[0]["address"].ToString();


        str = "select * from doctorreg1 where email='" + Session["email"] + "'";

        com = new SqlCommand(str, con);
        SqlDataReader dr = com.ExecuteReader();




        if (dr.HasRows)
        {
            while (dr.Read())
            {
                byte[] imgd = (byte[])dr["ImageData"];
                string ImageData = Convert.ToBase64String(imgd, 0, imgd.Length);
                Image3.ImageUrl = "data:image/png;base64," + ImageData;
            }
        }
        if (Session["email"] == null)
        {
            Session.RemoveAll();
            Response.Redirect("~/index.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                grdStudentBind();
            }
        }

    }



    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }

    public DataTable grdStudentBind()
    {
        SqlConnection con = new SqlConnection(strConnString);
        string unm = Session["email"].ToString();
        string reqsent = "1";
        SqlCommand cmd = new SqlCommand("    select userreg1.fname,userreg1.fname,userreg1.gender,userreg1.email,userreg1.contact,status1.user_email from userreg1 inner join status1 on userreg1.email=status1.user_email where doc_email='" + unm + "' and isRequestSent='" + reqsent + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Close();
        grdstureq.DataSource = dt;
        grdstureq.DataBind();
        return dt;
    }
    protected void grdstureq_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        Label stuemail = grdstureq.Rows[e.RowIndex].FindControl("lblstuemail") as Label;
        string confirm = "0";
        string cancel = "0";
        SqlCommand cmd = new SqlCommand("update status1 set isRequestSent='" + confirm + "',isRequestAccepted='" + cancel + "' where user_email='" + stuemail.Text + "' and doc_email='" + Session["email"].ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Cancel');</script>");
        con.Close();
        grdStudentBind();
    }

    protected void grdstureq_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        Label stuemail = grdstureq.Rows[e.RowIndex].FindControl("lblstuemail") as Label;
        string confirm = "1";
        SqlCommand cmd = new SqlCommand("update status1 set isRequestAccepted='" + confirm + "'  where user_email='" + stuemail.Text + "' and doc_email='" + Session["email"].ToString() + "'", con);
        /* cmd.CommandType = CommandType.Text;
         con.Open();
         cmd.ExecuteNonQuery();
         Response.Write("<script>alert('Request Confirmed');</script>");
         con.Close();
         grdStudentBind();
       SqlCommand cmd = new SqlCommand("update status1 set isRequestSent='" + confirm + "',isRequestAccepted='" + cancel + "' where user_email='" + stuemail.Text + "' and doc_email='" + Session["email"].ToString() + "'", con);*/
        cmd.CommandType = CommandType.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Cancel');</script>");
        con.Close();
        grdStudentBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/login.aspx");
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            String number = number1.Text.ToString();
            String message = HttpUtility.UrlEncode(message1.Text.ToString());
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "4F63qHo9cTg-vNbjvhF3njrYBoHA2giAQwlvTsbSaM"},
                {"numbers" , number},
                {"message" , message},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Response.Write(result);
            }

        }
    }
}