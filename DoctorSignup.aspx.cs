using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Net.Mail;
using System.Net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;

public partial class DoctorSignup : System.Web.UI.Page
{
    static String activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=DESKTOP-JNIJ4IS\\SQLEXPRESS;Initial Catalog=fitness;Integrated Security=True";
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string filename = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(filename);
        int fileSize = postedFile.ContentLength;

        if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
            || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
        {
            Stream stream = postedFile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
            string cs = ConfigurationManager.ConnectionStrings["Constr"].ConnectionString;
            Random random = new Random();
            activationcode = random.Next(1001, 9999).ToString();
            /*  String query = "insert into otp1(name,email,status,activationcode) values('" + TextBox1.Text + "','" + TextBox2.Text + "','Unverified','" + activationcode + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            *
              SqlConnection con = new SqlConnection(mycon);
              con.Open();
              SqlCommand cmd = new SqlCommand();
              cmd.CommandText = query;
              cmd.Connection = con;
              cmd.ExecuteNonQuery();
              */
            using (SqlConnection con = new SqlConnection(mycon))
            {
                SqlCommand cmd = new SqlCommand("spdoctorreg1", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramName = new SqlParameter()
                {
                    ParameterName = @"Name",
                    Value = filename
                };
                cmd.Parameters.Add(paramName);

                SqlParameter paramSize = new SqlParameter()
                {
                    ParameterName = "@Size",
                    Value = fileSize
                };
                cmd.Parameters.Add(paramSize);

                SqlParameter paramImageData = new SqlParameter()
                {
                    ParameterName = "@ImageData",
                    Value = bytes
                };
                cmd.Parameters.Add(paramImageData);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NewId",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                cmd.Parameters.AddWithValue("@fname", txtfirstname.Text.ToString());
                cmd.Parameters.AddWithValue("@lname", txtfirstname.Text.ToString());
                cmd.Parameters.AddWithValue("@email", txtmail.Text.ToString());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
                cmd.Parameters.AddWithValue("@gender", txtgender.Text.ToString());
                cmd.Parameters.AddWithValue("@specilization", txtsp.Text.ToString());
                cmd.Parameters.AddWithValue("@dob", txtdob.Text.ToString());
                cmd.Parameters.AddWithValue("@contact", txtcontact.Text.ToString());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.ToString());
                cmd.Parameters.AddWithValue("@status", "Unverified");
                cmd.Parameters.AddWithValue("@activationcode", activationcode.ToString());

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                sendcode();
                Response.Redirect("Doctorotp.aspx?email=" + txtmail.Text);
            }
        }
    }

    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("deepakrgs12@gmail.com", "8192955672@");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Activation Code to Verify Email Address";
        msg.Body = "Dear " + txtfirstname.Text + ", Your Activation Code is  " + activationcode + "\n\n\nThanks & Regards\nDEEPAK AGNIHOTRI Team";
        string toaddress = txtmail.Text;
        msg.To.Add(toaddress);
        string fromaddress = "PROJECT#4 <deepakrgs12@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
    }
}