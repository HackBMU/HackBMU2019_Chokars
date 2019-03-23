using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Signin : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["Constr"].ConnectionString;

    SqlCommand com;

    SqlDataAdapter sqlda;

    string str;

    DataTable dt;

    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Unnamed_Click(object sender, EventArgs e)
    {
       
        try
        {
            string ltype = logintype.Text;
            if (ltype == "Admin")
            {


                string email = txtusername.Text.Trim();

                string password = txtpassword.Text.Trim();

                SqlConnection con = new SqlConnection(strConnString);

                con.Open();

                str = "Select * from tb_adminregister";

                com = new SqlCommand(str);

                sqlda = new SqlDataAdapter(com.CommandText, con);

                dt = new DataTable();

                sqlda.Fill(dt);

                RowCount = dt.Rows.Count;

                for (int i = 0; i < RowCount; i++)

                {

                    email = dt.Rows[i]["email"].ToString();

                    password = dt.Rows[i]["password"].ToString();

                    if (email == txtusername.Text && password == txtpassword.Text)

                    {

                        Session["email"] = email;
                        Response.Redirect("NewFolder1/dashboard.aspx");
                        //  Response.Redirect("selectdoctor.aspx");
                    }
                }
            }



            else

            {

                txtmsg.Text = "Invalid User Name or Password! Please try again!";

            }
            if (ltype == "Doctor")
            {


                string email = txtusername.Text.Trim();

                string password = txtpassword.Text.Trim();

                SqlConnection con = new SqlConnection(strConnString);

                con.Open();

                str = "Select * from doctorreg1";

                com = new SqlCommand(str);

                sqlda = new SqlDataAdapter(com.CommandText, con);

                dt = new DataTable();

                sqlda.Fill(dt);

                RowCount = dt.Rows.Count;

                for (int i = 0; i < RowCount; i++)

                {

                    email = dt.Rows[i]["email"].ToString();

                    password = dt.Rows[i]["password"].ToString();


                    if (email == txtusername.Text && password == txtpassword.Text)

                    {

                        Session["email"] = email;
                        //  Response.Redirect("FAke.aspx");
                       Response.Redirect("doctor.aspx");
                         //   Response.Redirect("FAke.aspx");
                    }
                }
            }



            else

            {

                txtmsg.Text = "Invalid User Name or Password! Please try again!";

            }
            if (ltype == "User")
            {


                string email = txtusername.Text.Trim();

                string password = txtpassword.Text.Trim();

                SqlConnection con = new SqlConnection(strConnString);

                con.Open();

                str = "Select * from userreg1";

                com = new SqlCommand(str);

                sqlda = new SqlDataAdapter(com.CommandText, con);

                dt = new DataTable();

                sqlda.Fill(dt);

                RowCount = dt.Rows.Count;

                for (int i = 0; i < RowCount; i++)

                {

                    email = dt.Rows[i]["email"].ToString();

                    password = dt.Rows[i]["password"].ToString();

                    if (email == txtusername.Text && password == txtpassword.Text)

                    {

                        Session["email"] = email;
                        Response.Redirect("profileuser.aspx");
                        //  Response.Redirect("selectdoctor.aspx");
                    }
                }
            }



            else

            {

                txtmsg.Text = "Invalid User Name or Password! Please try again!";

            }

        }

        catch (Exception)
        {
            txtmsg.Text = "Invalid User Name or Password!vvvvvvv Please try again!";
        }
    }

}  