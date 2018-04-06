using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class floorDetails : System.Web.UI.Page
{
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    static int productid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        if (!this.IsPostBack)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT ProductId,ProductName,Image1Path,Image2Path,Engineered from tblProduct where  ProductId=@type"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("@type", SqlDbType.Int).Value = id;
                    //Response.Write(id);
                    cmd.Connection = con;
                    try
                    {
                        con.Open();
                        SqlDataReader dr = cmd.ExecuteReader();
                        //int CategoryId = 0;
                        while (dr.Read())
                        {
                            ImageButton1.ImageUrl = (string)dr["Image1Path"];
                            Image1.ImageUrl = (string)dr["Image1Path"];
                            ImageButton2.ImageUrl = (string)dr["Image2Path"];
                            Image2.ImageUrl = (string)dr["Image2Path"];
                            lblName.Text = (string)dr["ProductName"];
                            lblDesc.Text = (string)dr["Engineered"]+" in. Engineered";
                            productid = Convert.ToInt32(dr["ProductID"]);
                            displayDetails(productid);
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
        }
    }

    private void displayDetails(int productid)
    {
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * from tblSpecifications,tblMeasurement,tblLook,tblInstallation where tblSpecifications.ProductId=tblLook.ProductId and tblLook.ProductId=tblInstallation.ProductId and tblInstallation.ProductId=tblMeasurement.ProductId and tblMeasurement.ProductId=@id;"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = productid;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                DetailsView1.DataSource = dt;
                                DetailsView1.DataBind();
                                DetailsView2.DataSource = dt;
                                DetailsView2.DataBind();
                                DetailsView3.DataSource = dt;
                                DetailsView3.DataBind();
                                DetailsView4.DataSource = dt;
                                DetailsView4.DataBind();
                                divDetails.Style.Add("display", "block");
                            }
                        }
                    }
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
    }

   
    protected void goToPricing(object sender, EventArgs e)
    {
        Server.Transfer("CostEstimation.aspx?id=" + productid);
    }
}