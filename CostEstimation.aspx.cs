using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CostEstimation : System.Web.UI.Page
{
    static int costpersquarefeet = 0;
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        if (!this.IsPostBack)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT PricePerSquareFeet,ProductName,Image1Path from tblProduct where  ProductId=@type"))
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
                            costpersquarefeet = Convert.ToInt32(dr["PricePerSquareFeet"]);
                            lblProductName.Text =(string) dr["ProductName"];
                            imgProduct.ImageUrl = (string)dr["Image1Path"];
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int height = Convert.ToInt32(txtheight.Text);
        int width = Convert.ToInt32(txtwidth.Text);
       // Response.Write(costpersquarefeet);
       int totalcost = height * width * costpersquarefeet;
       lblcost.Text = "Around " + totalcost + " Dirham";
       divEstimate.Visible = true;
    }
}