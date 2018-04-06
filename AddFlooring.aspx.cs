using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class AddFlooring : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Admin"]==null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;

            switch (ext)
            {
                case ".jpg":
                case ".JPG":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                case ".PNG":
                    contenttype = "image/png";
                    break;
                case ".gif":
                case ".GIF":
                    contenttype = "image/gif";
                    break;
            }
            if (contenttype != String.Empty)
            {
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    String command = "Insert into tblFlooring values(@flooring,@image)";
                    SqlCommand cmd = new SqlCommand(command, conn);
                    cmd.CommandType = CommandType.Text;
                    string flooring = txtProductType.Text;
                    //cmd.Parameters.AddWithValue("@flooring", flooring);
                    //cmd.Parameters.AddWithValue("@image", "/Images/Flooring Types/" + filename);
                    cmd.Parameters.Add("@flooring", SqlDbType.NVarChar).Value = flooring;
                    cmd.Parameters.Add("@image", SqlDbType.NVarChar).Value = "/Images/Flooring Types/" + filename;
                    
                    conn.Open();
                    try
                    {
                        cmd.ExecuteNonQuery();
                        FileUpload1.SaveAs(Server.MapPath("/Images/Flooring Types/" + filename));
                        lblmessage.Text = "Data Inserted successfully";
                        lblmessage.Visible = true;
                        txtProductType.Text = "";
                    }
                    catch (Exception ex)
                    {
                        lblmessage.Text = ex.Message;
                        lblmessage.ForeColor = System.Drawing.Color.Green;
                        lblmessage.Visible = true;
                    }
                }
            }
        }
    }
    protected void txtProductType_TextChanged(object sender, EventArgs e)
    {
        if(lblmessage.Visible==true)
        {
            lblmessage.Visible = false;
        }
    }
}