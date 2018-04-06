using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class subCategory : System.Web.UI.Page
{
    string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        if (!this.IsPostBack)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT ProductType,ProductId,ProductName,Engineered,Image1Path,ProductTypeId from tblFlooring,tblProduct where  tblProduct.ProductTypeId=@typeid and tblFlooring.Id=@typeid;"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add("@typeid", SqlDbType.Int).Value = id;
                    //cmd.Connection = con;
                    cmd.Connection = con;
                    try
                    {
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
        }
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
            img[nControl].ImageUrl = (string)myRow["Image1Path"];
            img[nControl].Height = 180;
            img[nControl].Width = 250;
            //img[nControl].Attributes.Add("AutoPostBack", "true");
            img[nControl].Attributes.Add("runat", "server");
            //img[nControl].Attributes.Add("OnClick", "sendToNextPage");
            nControl++;
        }
        //for (int i = 0; i < num; i++)
        
        nControl = 0;
        foreach (DataRow myRow in MyDataSet.Tables[0].Rows)
        {
            lblCategory.Text =(string) myRow["ProductType"]+" Flooring Products";
            System.Web.UI.HtmlControls.HtmlGenericControl captionDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            captionDiv.Attributes.Add("class", "thumbnail");
            System.Web.UI.HtmlControls.HtmlGenericControl caption = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            caption.InnerHtml = "<a href=floorDetails.aspx?id=" + myRow["ProductId"] + " >" + (string)myRow["ProductName"] + "</a>";
            caption.InnerHtml += "<br/>Engineered :" + (string)myRow["Engineered"];
            captionDiv.Controls.Add(img[nControl]);
            captionDiv.Controls.Add(caption);
            createDiv.Controls.Add(captionDiv);
            createDiv.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;&nbsp;"));
            nControl++;
        }
        lblCategory.Visible = true;
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //
    }
}