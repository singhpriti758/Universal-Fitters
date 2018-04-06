using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == txtUsername.Text)
        {
            Response.Redirect("AddFlooring.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("Select Password from tblAdmin where AdminId=@username", con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            try
            {
                con.Open();
                string pass = cmd.ExecuteScalar().ToString();
                if (pass == txtPassword.Text)
                {
                    Session["Admin"] = txtUsername.Text;
                    Response.Redirect("AddFlooring.aspx");
                }
                else
                {
                    lblmessage.Text = "Failed";
                    lblmessage.Visible = true;
                }
            }
            catch (Exception ex)
            {
                // lblmessage.Text = ex.Message;
                lblmessage.Text = "Failed";
                lblmessage.Visible = true;
            }
        }
    }
}