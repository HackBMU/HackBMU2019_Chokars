using System;

using System.Collections;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;



using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;

public partial class pro : System.Web.UI.Page
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

        str = "select * from userreg1 where email='" + Session["email"] + "'";

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

        Label9.Text = ds.Tables[0].Rows[0]["address"].ToString();


        str = "select * from userreg1 where email='" + Session["email"] + "'";

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
    }




    /*  protected void btnlogout_Click(object sender, EventArgs e)
      {

          Session["email"] = Label3.Text.ToString();
          Response.Redirect("userprofile.aspx");
      }


      protected void Button3_Click1(object sender, EventArgs e)
      {
          Response.Redirect("selectdoctor.aspx");
      }

      protected void btnlogout_Click2(object sender, EventArgs e)
      {
          Response.Redirect("Signin.aspx");
      }
      */


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("uyrtyytytt");
        Response.Redirect("NewFolder1/editdoctor.aspx");
    }
}