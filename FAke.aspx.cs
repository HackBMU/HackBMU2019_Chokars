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

public partial class FAke : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            grdStudentBind();
        }
    }
    public DataTable grdStudentBind()
    {
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
        Label stuemail = grdstureq.Rows[e.RowIndex].FindControl("lblstuemail") as Label;
        string confirm = "1";
        SqlCommand cmd = new SqlCommand("update status1 set isRequestAccepted='" + confirm + "'  where user_email='" + stuemail.Text + "' and doc_email='" + Session["email"].ToString() + "'", con);
        cmd.CommandType = CommandType.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Request Confirmed');</script>");
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

            HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://bulksmsgateway.co.in/SMS_API/sendsms.php?username=demo&password=123456&_SmsTo={" + txtcontact.Text.ToString().Trim() + "}&sendername=NETWLD&_Msg={" + txtmsg.Text.ToString().Trim() + "}");

            HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
            System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
            string responseString = respStreamReader.ReadToEnd();
            respStreamReader.Close();
            myResp.Close();
        }
        txtcontact.Text = "";
        txtmsg.Text = "";
        lblsucmsg.Text = "Message sent";
    }
}