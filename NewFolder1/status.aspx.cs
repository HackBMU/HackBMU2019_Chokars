using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            displayRecords();
        }
    }
    public DataTable displayRecords()
    {
        string qry = "select * from status1";
        SqlDataAdapter adp = new SqlDataAdapter(qry, con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        grdstudent.DataSource = dt;
        grdstudent.DataBind();
        return dt;
    }

    protected void grdstudent_RowEditing(object sender, GridViewEditEventArgs e)
    {
        /*   grdstudent.EditIndex = e.NewEditIndex;
           displayRecords();*/
    }
    protected void grdstudent_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        /* Label id = grdstudent.Rows[e.RowIndex].FindControl("lblid") as Label;
         TextBox fname = grdstudent.Rows[e.RowIndex].FindControl("txtfirstname") as TextBox;
         TextBox lastname = grdstudent.Rows[e.RowIndex].FindControl("txtlastname") as TextBox;
         TextBox email = grdstudent.Rows[e.RowIndex].FindControl("txtemail") as TextBox;
         TextBox gender = grdstudent.Rows[e.RowIndex].FindControl("txtgender") as TextBox;
         TextBox course = grdstudent.Rows[e.RowIndex].FindControl("txtcourse") as TextBox;
         TextBox contact = grdstudent.Rows[e.RowIndex].FindControl("txtcontact") as TextBox;
         con.Open();
         SqlCommand cmd = new SqlCommand("update userreg1 set firstname='" + fname.Text + "',Lastname='" + lastname.Text + "',gender='" + gender.Text + "' where id='" + Convert.ToInt32(id.Text) + "'", con);
         cmd.ExecuteNonQuery();
         con.Close();
         grdstudent.EditIndex = -1;
         displayRecords();*/
    }
    protected void grdstudent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        /* grdstudent.EditIndex = -1;
         displayRecords();*/
    }
    protected void grdstudent_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            /*  con.Open();
              Label id = grdstudent.Rows[e.RowIndex].FindControl("lblid") as Label;
              string query = "delete from tb_StudentRegister where id='" + Convert.ToInt32(id.Text) + "'";
              SqlCommand cmd = new SqlCommand(query, con);
              cmd.ExecuteNonQuery();
              grdstudent.EditIndex = -1;
              displayRecords();
              Response.Write("<script>alert('Data Deleted successfully');</script>");*/
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
}