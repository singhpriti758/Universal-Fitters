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

public partial class AddProduct : System.Web.UI.Page
{
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        if (!this.IsPostBack)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT distinct ProductType,Id from tblFlooring "))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "ProductType";
                    DropDownList1.DataValueField = "Id";
                    DropDownList1.DataBind();
                }
            }
            DropDownList1.Items.Insert(0, new ListItem("--Select Product Type--", "0"));
        }
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string pdffilename = Path.GetFileName(flPdf.PostedFile.FileName);
        string pdfext = Path.GetExtension(pdffilename);
        string pdfcontenttype = String.Empty;
        string img1filename = Path.GetFileName(flImage1.PostedFile.FileName);
        string img1ext = Path.GetExtension(img1filename);
        string img1contenttype = String.Empty;
        string img2filename = Path.GetFileName(flImage2.PostedFile.FileName);
        string img2ext = Path.GetExtension(img2filename);
        string img2contenttype = String.Empty;
        switch (pdfext)
        {
            case ".pdf":
            case ".PDF":
                pdfcontenttype = "application/pdf";
                break;
        }
        switch (img1ext)
        {
            case ".jpg":
            case ".JPG":
                img1contenttype = "image/jpg";
                break;
            case ".png":
            case ".PNG":
                img1contenttype = "image/png";
                break;
            case ".gif":
            case ".GIF":
                img1contenttype = "image/gif";
                break;
        }
        switch (img2ext)
        {
            case ".jpg":
            case ".JPG":
                img2contenttype = "image/jpg";
                break;
            case ".png":
            case ".PNG":
                img2contenttype = "image/png";
                break;
            case ".gif":
            case ".GIF":
                img2contenttype = "image/gif";
                break;
        }
        if (pdfcontenttype != "" && img1contenttype != "" && img2contenttype != "")
        {
            using (SqlConnection conn = new SqlConnection(ConnectionString))
            {
                String command = "Insert into tblproduct(ProductTypeId,ProductName,PdfLink,Engineered,PricePerSquareFeet,Image1Path,Image2Path) values(@producttypeid,@productname,@pdflink,@engineered,@ppsf,@img1link,@img2link)";
                SqlCommand cmd = new SqlCommand(command, conn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@producttypeid", SqlDbType.Int).Value = Convert.ToInt32(DropDownList1.SelectedValue);
                cmd.Parameters.Add("@productname", SqlDbType.NVarChar).Value = txtProductName.Text;
                //create directory
                cmd.Parameters.Add("@pdflink", SqlDbType.NVarChar).Value = "/Images/" + DropDownList1.SelectedItem + "/PDF/" + pdffilename;
                cmd.Parameters.Add("@engineered", SqlDbType.NVarChar).Value = txtEngineered.Text;
                cmd.Parameters.Add("@ppsf", SqlDbType.NVarChar).Value = txtPricePerSquareFeet.Text;
                //create directory
                cmd.Parameters.Add("@img1link", SqlDbType.NVarChar).Value = "/Images/" + DropDownList1.SelectedItem + "/Images/" + img1filename;
                cmd.Parameters.Add("@img2link", SqlDbType.NVarChar).Value = "/Images/" + DropDownList1.SelectedItem + "/Images/" + img2filename;

                conn.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    //insert into directory
                    flPdf.SaveAs(Server.MapPath("/Images/" + DropDownList1.SelectedItem + "/PDF/" + pdffilename));
                    flImage1.SaveAs(Server.MapPath("/Images/" + DropDownList1.SelectedItem + "/Images/" + img1filename));
                    flImage2.SaveAs(Server.MapPath("/Images/" + DropDownList1.SelectedItem + "/Images/" + img2filename));
                    lblmessage.Text = "Data Inserted successfully";
                    lblmessage.ForeColor = System.Drawing.Color.Green;
                    lblmessage.Visible = true;
                }
                catch (Exception ex)
                {
                    lblmessage.Text = ex.Message;
                    lblmessage.ForeColor = System.Drawing.Color.Red;
                    lblmessage.Visible = true;
                }
            }
        }
        else
        {
            lblmessage.Text = "Incorrect Document Type !! Please check the documents uploaded..";
            lblmessage.ForeColor = System.Drawing.Color.Red;
            lblmessage.Visible = true;
        }
    }
}