using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void redirectFunction(object sender, EventArgs e)
    {
        LinkButton btn = sender as LinkButton;
        int id = 0;
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT Id from tblFlooring where  ProductType=@typeid"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@typeid", SqlDbType.NVarChar).Value = btn.Text;
                //cmd.Connection = con;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    //int CategoryId = 0;
                    while (dr.Read())
                    {
                        id = Convert.ToInt32(dr["Id"]);
                    }

                }
                catch(Exception ex)
                {

                }
            }
        }
        Server.Transfer("subCategory.aspx?id="+id);
    }
    protected void redirectToInstall(object sender,EventArgs e)
    {
        LinkButton btn = sender as LinkButton;
        if(btn.ID=="lbInstallationOverview1" || btn.ID=="lbInstallationOverview2")
        {
            Server.Transfer("Installation.aspx?id=overview");
        }
        else
        {
            Server.Transfer("Installation.aspx?id=" + btn.ID);
        }
    }

}
