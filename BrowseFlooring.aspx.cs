using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BrowseFlooring : System.Web.UI.Page
{
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Id,ImagePath,ProductType from tblFlooring "))
                {
                    cmd.CommandType = CommandType.Text;
                    //cmd.Connection = con;
                    cmd.Connection = con;
                    try
                    {
                        con.Open();
                        DataSet data = new DataSet();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        da.Fill(data);
                        int i = data.Tables[0].Rows.Count;
                        
                        generateControls(i, da);


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
       // }
    }

    private void generateControls(int num, SqlDataAdapter da)
    {
        System.Web.UI.HtmlControls.HtmlGenericControl createDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        createDiv.ID = "createDiv";
        createDiv.Attributes.Add("class", "row");
        createDiv.Style.Add("width", "1200px");
        createDiv.Style.Add("margin-left", "50px");
        this.Controls.Add(createDiv);
        DataSet MyDataSet = new DataSet();
        da.Fill(MyDataSet);
        ImageButton[] img = new ImageButton[num];
        int nControl = 0;

        foreach (DataRow myRow in MyDataSet.Tables[0].Rows)
        {
            img[nControl] = new ImageButton();
            img[nControl].ImageUrl = (string)myRow["ImagePath"];
            img[nControl].Height = 180;
            img[nControl].Width = 250;
            //img[nControl].Attributes.Add("AutoPostBack", "true");
            img[nControl].Attributes.Add("runat", "server");
            img[nControl].Attributes.Add("OnClick", "sendToNextPage");
            nControl++;
        }
        //for (int i = 0; i < num; i++)
        nControl = 0;
        foreach (DataRow myRow in MyDataSet.Tables[0].Rows)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl captionDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            captionDiv.Attributes.Add("class", "thumbnail");
            System.Web.UI.HtmlControls.HtmlGenericControl caption = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            caption.InnerHtml = "<a href=subCategory.aspx?id=" +myRow["Id"] + " >" + (string)myRow["ProductType"] + "</a>";
            //caption.InnerHtml = "<a href=subCategory.aspx?id=Luxury-Vinyl >" + (string)myRow["ProductType"] + "</a>";
            captionDiv.Controls.Add(img[nControl]);
            captionDiv.Controls.Add(caption);
            createDiv.Controls.Add(captionDiv);
            createDiv.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;&nbsp;"));
            nControl++;
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //
    }
    
}