using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("Select Password from tblUser where Username=@username",con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            string pass = "";
            try
            {
                con.Open();
                 pass =cmd.ExecuteScalar().ToString();
                    if (pass == txtPassword.Text)
                    {
                        lblmessage.Text = "Successful";
                        lblmessage.Visible = true;
                        Session["user"] = txtUsername.Text;
                    }
                    else
                    {
                        lblmessage.Text = "Invalid Username or Password";
                        lblmessage.ForeColor = System.Drawing.Color.Red;
                        lblmessage.Visible = true;
                    }
            }
            catch(Exception ex)
            {
                //lblmessage.Text = ex.Message;
                lblmessage.Text = "Invalid Username or Password";
                lblmessage.ForeColor = System.Drawing.Color.Red;
                lblmessage.Visible = true;
            }
        }
    }
}