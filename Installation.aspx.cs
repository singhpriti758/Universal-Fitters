using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Installation : System.Web.UI.Page
{
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
            string id = Request.QueryString["id"];
            if(id=="lbInstallHardwood")
            {
                divHardwood.Style.Add("display", "block");
                divLaminate.Style.Add("display", "none");
                divLuxuryVinyl.Style.Add("display", "none");
                divOverview.Style.Add("display", "none");
            }
            else if (id == "lbInstallLaminate")
            {
                divLaminate.Style.Add("display", "block");
                divHardwood.Style.Add("display", "none");
                divLuxuryVinyl.Style.Add("display", "none");
                divOverview.Style.Add("display", "none");
            }
            else if (id == "lbInstallLuxuryVinyl")
            {
                divLuxuryVinyl.Style.Add("display", "block");
                divHardwood.Style.Add("display", "none");
                divLaminate.Style.Add("display", "none");
                divOverview.Style.Add("display", "none");
            }
            else
            {
                divOverview.Style.Add("display", "block");
                divHardwood.Style.Add("display", "none");
                divLaminate.Style.Add("display", "none");
                divLuxuryVinyl.Style.Add("display", "none");
            }
        }
    protected void downloadPDF(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        lblError.Visible = false;
        string type = "";
        if (btn.ID == "btnHardwood" || btn.ID == "btnHardwood2")
        {
            type = "Hardwood";
        }
        else if (btn.ID == "btnLaminate" || btn.ID == "btnLaminate2")
        {
            type = "Laminate";
        }
        else if (btn.ID == "btnLuxuryVinyl" || btn.ID == "btnLuxuryVinyl2")
        {
            type = "Luxury Vinyl";
        }
        if (type != "")
        {
            string fileRelativePath = "";
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select distinct PDFLink from tblProduct,tblFlooring where tblFlooring.Id=tblproduct.ProductTypeId and tblFlooring.ProductType=@producttype;"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.Add("@producttype", SqlDbType.NVarChar).Value = type;
                        //Response.Write(id);
                        cmd.Connection = con;
                        try
                        {
                            con.Open();
                            SqlDataReader dr = cmd.ExecuteReader();
                            //int CategoryId = 0;
                            while (dr.Read())
                            {
                                fileRelativePath =(string) dr["PDFLink"];
                            }
                            // con.Close();
                            //getImages(CategoryId);
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);

                        }
                        finally
                        {
                            con.Close();
                            con.Dispose();
                        }
                    }
                }
                string contentType = "";
                
                //Get the physical path to the file.
                string FilePath = HttpContext.Current.Server.MapPath(fileRelativePath);

                string fileExt = Path.GetExtension(fileRelativePath).Split('.')[1].ToLower();

                if (fileExt == "pdf")
                {
                    //Set the appropriate ContentType.
                    contentType = "Application/pdf";
                }

                //Set the appropriate ContentType.
                Response.ContentType = contentType;
                Response.AppendHeader("content-disposition", "attachment; filename=" + (new FileInfo(fileRelativePath)).Name);

                //Write the file directly to the HTTP content output stream.
                Response.WriteFile(FilePath);
                Response.End();
            }
            catch
            {
                lblError.Visible = true;
            }
        }
    }
    
}