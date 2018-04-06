using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ProductSpecification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        if (!this.IsPostBack)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT distinct ProductId,ProductName from tblProduct order by ProductId desc"))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "ProductName";
                    DropDownList1.DataValueField = "ProductId";
                    DropDownList1.DataBind();
                }
            }
            DropDownList1.Items.Insert(0, new ListItem("--Select Product Name--", "0"));
            DropDownList1.SelectedIndex = 0;
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        lblmessage.Visible = false;
        clearData();
        if(DropDownList1.SelectedIndex!=0)
        {
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                int ProductId = Convert.ToInt32(DropDownList1.SelectedValue);
                con.Open();
                try
                {
                    string command1 = "select * from tblInstallation,tblLook,tblMeasurement,tblSpecifications where tblMeasurement.[ProductId]=@ProductId and tblInstallation.ProductId=@ProductId and tblLook.ProductId=@ProductId and tblSpecifications.ProductId=@ProductId";
                    SqlCommand cmd = new SqlCommand(command1, con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ProductId", ProductId);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    while (sdr.Read())
                    {
                        txtDIYLevel.Text = (sdr["DIYLevel"].ToString());
                        txtInstallationLocation.Text = (sdr["InstallationLocation"].ToString());
                        txtInstallationMethod.Text = (sdr["InstallationMethod"].ToString());

                        txtColor.Text = (sdr["color"].ToString());
                        txtGlossLevel.Text = (sdr["GlossLevel"].ToString());
                        txtDesignOrTexture.Text = (sdr["DesignOrTexture"].ToString());
                        txtEdgeType.Text = (sdr["EdgeType"].ToString());

                        txtWidth.Text = (sdr["Width"].ToString());
                        txtLength.Text = (sdr["Length"].ToString());
                        txtThickness.Text = (sdr["Thickness"].ToString());
                        txtSqaureFootPerCarton.Text = (sdr["SquareFootPerCarton"].ToString());

                        txtSpecies.Text = (sdr["Species"].ToString());
                        txtPerformanceClass.Text = (sdr["PerformanceClass"].ToString());
                        txtWarranty.Text = (sdr["Warranty"].ToString());
                        txtConstruction.Text = (sdr["Construction"].ToString());
                        txtFinishSystem.Text = (sdr["FinishSystem"].ToString());
                    }

                }
                catch (Exception ex)
                {
                    lblmessage.Text = ex.Message;
                    lblmessage.ForeColor = System.Drawing.Color.Red;
                }

            }
        }
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        int ProductId = Convert.ToInt32(DropDownList1.SelectedValue);

        string Species = txtSpecies.Text;
        string PerformanceClass = txtPerformanceClass.Text;
        string Warranty = txtWarranty.Text;
        string Construction = txtConstruction.Text;
        string FinishSystem = txtFinishSystem.Text;

        string color=txtColor.Text;
        string GlossLevel=txtGlossLevel.Text;
        string DesignOrTexture=txtDesignOrTexture.Text;
        string EdgeType = txtEdgeType.Text;

        string Width=txtWidth.Text;
        string Length=txtLength.Text;
        string Thickness=txtThickness.Text;
        string SquareFootPerCarton = txtSqaureFootPerCarton.Text;

        string DIYLevel=txtDIYLevel.Text;
        string InstallationLocation=txtInstallationLocation.Text;
        string InstallationMethod = txtInstallationMethod.Text;
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;      
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                con.Open();
                SqlTransaction transaction=con.BeginTransaction();
                try
                {
                     string command1="INSERT INTO tblSpecifications" +
           "(Species,ProductId ,PerformanceClass,Warranty ,Construction,FinishSystem)" +
            "VALUES (@Species,@ProductId ,@PerformanceClass,@Warranty,@Construction,@FinishSystem)";
                SqlCommand cmd=new SqlCommand(command1,con,transaction);
                cmd.CommandType=CommandType.Text;
                cmd.Parameters.AddWithValue("@Species",Species);
                cmd.Parameters.AddWithValue("@ProductId",ProductId);
                cmd.Parameters.AddWithValue("@PerformanceClass",PerformanceClass);
                cmd.Parameters.AddWithValue("@Warranty",Warranty);
                cmd.Parameters.AddWithValue("@Construction",Construction);
                cmd.Parameters.AddWithValue("@FinishSystem",FinishSystem);
                 cmd.ExecuteNonQuery();

                string command2="INSERT INTO tblLook (ProductId,color,GlossLevel,DesignOrTexture,EdgeType)" +
                                    "VALUES (@ProductId,@color,@GlossLevel,@DesignOrTexture,@EdgeType)";
                cmd=new SqlCommand(command2,con,transaction); 
                cmd.CommandType=CommandType.Text;
                cmd.Parameters.AddWithValue("@ProductId",ProductId);
                cmd.Parameters.AddWithValue("@color",color);
                cmd.Parameters.AddWithValue("@GlossLevel",GlossLevel);
                cmd.Parameters.AddWithValue("@DesignOrTexture",DesignOrTexture);
                cmd.Parameters.AddWithValue("@EdgeType",EdgeType);
                    cmd.ExecuteNonQuery();

                string command3="INSERT INTO tblMeasurement(ProductId,Width ,Length,Thickness,SquareFootPerCarton)"+
                "VALUES (@ProductId,@Width ,@Length,@Thickness,@SquareFootPerCarton)";
                cmd=new SqlCommand(command3,con,transaction); 
                cmd.CommandType=CommandType.Text;
                cmd.Parameters.AddWithValue("@ProductId",ProductId);
                cmd.Parameters.AddWithValue("@Width",Width);
                cmd.Parameters.AddWithValue("@Length",Length);
                cmd.Parameters.AddWithValue("@Thickness",Thickness);
                cmd.Parameters.AddWithValue("@SquareFootPerCarton",SquareFootPerCarton);
                    cmd.ExecuteNonQuery();

                string command4="INSERT INTO tblInstallation (ProductId,DIYLevel,InstallationLocation,InstallationMethod)" +
                                    "VALUES (@ProductId,@DIYLevel,@InstallationLocation,@InstallationMethod)";
                cmd=new SqlCommand(command4,con,transaction); 
                cmd.CommandType=CommandType.Text;
                cmd.Parameters.AddWithValue("@ProductId",ProductId);
                cmd.Parameters.AddWithValue("@DIYLevel",DIYLevel);
                cmd.Parameters.AddWithValue("@InstallationLocation",InstallationLocation);
                cmd.Parameters.AddWithValue("@InstallationMethod",InstallationMethod);
                    cmd.ExecuteNonQuery();
                    transaction.Commit();
                    lblmessage.Visible = true;
                    lblmessage.ForeColor = System.Drawing.Color.Green;
                    lblmessage.Text="<b>Data inserted successfully.</b>";
                    clearData();
                }
                catch(Exception ex)
                {
                    transaction.Rollback();
                    lblmessage.Text=ex.Message;
                    lblmessage.ForeColor=System.Drawing.Color.Red;
                    lblmessage.Visible = true;
                }
               
            }
        
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        int ProductId = Convert.ToInt32(DropDownList1.SelectedValue);

        string Species = txtSpecies.Text;
        string PerformanceClass = txtPerformanceClass.Text;
        string Warranty = txtWarranty.Text;
        string Construction = txtConstruction.Text;
        string FinishSystem = txtFinishSystem.Text;

        string color = txtColor.Text;
        string GlossLevel = txtGlossLevel.Text;
        string DesignOrTexture = txtDesignOrTexture.Text;
        string EdgeType = txtEdgeType.Text;

        string Width = txtWidth.Text;
        string Length = txtLength.Text;
        string Thickness = txtThickness.Text;
        string SquareFootPerCarton = txtSqaureFootPerCarton.Text;

        string DIYLevel = txtDIYLevel.Text;
        string InstallationLocation = txtInstallationLocation.Text;
        string InstallationMethod = txtInstallationMethod.Text;
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            con.Open();
            SqlTransaction transaction = con.BeginTransaction();
            try
            {
                string command1 = "update tblSpecifications set Species=@Species,ProductId=@ProductId,PerformanceClass=@PerformanceClass,Warranty=@Warranty,Construction=@Construction,FinishSystem=@FinishSystem where ProductId=@ProductId";
                SqlCommand cmd = new SqlCommand(command1, con, transaction);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Species", Species);
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@PerformanceClass", PerformanceClass);
                cmd.Parameters.AddWithValue("@Warranty", Warranty);
                cmd.Parameters.AddWithValue("@Construction", Construction);
                cmd.Parameters.AddWithValue("@FinishSystem", FinishSystem);
                cmd.ExecuteNonQuery();

                string command2 = "update tblLook set ProductId=@ProductId,color=@color,GlossLevel=@GlossLevel,DesignOrTexture=@DesignOrTexture,EdgeType=@EdgeType where ProductId=@ProductId";
                cmd = new SqlCommand(command2, con, transaction);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@color", color);
                cmd.Parameters.AddWithValue("@GlossLevel", GlossLevel);
                cmd.Parameters.AddWithValue("@DesignOrTexture", DesignOrTexture);
                cmd.Parameters.AddWithValue("@EdgeType", EdgeType);
                cmd.ExecuteNonQuery();

                string command3 = "update tblMeasurement set ProductId=@ProductId,Width=@Width,Length=@Length,Thickness=@Thickness,SquareFootPerCarton=@SquareFootPerCarton where ProductId=@ProductId";
                cmd = new SqlCommand(command3, con, transaction);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@Width", Width);
                cmd.Parameters.AddWithValue("@Length", Length);
                cmd.Parameters.AddWithValue("@Thickness", Thickness);
                cmd.Parameters.AddWithValue("@SquareFootPerCarton", SquareFootPerCarton);
                cmd.ExecuteNonQuery();

                string command4 = "update  tblInstallation set ProductId=@ProductId,DIYLevel=@DIYLevel,InstallationLocation=@InstallationLocation,InstallationMethod=@InstallationMethod where ProductId=@ProductId";
                cmd = new SqlCommand(command4, con, transaction);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                cmd.Parameters.AddWithValue("@DIYLevel", DIYLevel);
                cmd.Parameters.AddWithValue("@InstallationLocation", InstallationLocation);
                cmd.Parameters.AddWithValue("@InstallationMethod", InstallationMethod);
                cmd.ExecuteNonQuery();
                transaction.Commit();
                lblmessage.Visible = true;
                lblmessage.ForeColor = System.Drawing.Color.Green;
                lblmessage.Text = "<b>Data Updated successfully.</b>";
                clearData();
            }
            catch (Exception ex)
            {
                transaction.Rollback();
                lblmessage.Text = ex.Message;
                lblmessage.ForeColor = System.Drawing.Color.Red;
                lblmessage.Visible = true;
            }

        }
        
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;       
            using (SqlConnection con = new SqlConnection(ConnectionString))
            {
                int ProductId = Convert.ToInt32(DropDownList1.SelectedValue);
                con.Open();
                SqlTransaction transaction = con.BeginTransaction();
                try
                {
                    string command1 = "delete from tblinstallation where ProductId=@ProductId";
                    SqlCommand cmd = new SqlCommand(command1,con,transaction);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ProductId", ProductId);
                    cmd.ExecuteNonQuery();

                    string command2 = "delete from tblLook where ProductId=@ProductId";
                    cmd = new SqlCommand(command2, con, transaction);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ProductId", ProductId);
                    cmd.ExecuteNonQuery();

                    string command3 = "delete from tblMeasurement where ProductId=@ProductId";
                    cmd = new SqlCommand(command3, con, transaction);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ProductId", ProductId);
                    cmd.ExecuteNonQuery();

                    string command4 = "delete from tblSpecifications where ProductId=@ProductId";
                    cmd = new SqlCommand(command4, con, transaction);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ProductId", ProductId);
                    cmd.ExecuteNonQuery();

                    transaction.Commit();
                    lblmessage.Visible = true;
                    lblmessage.ForeColor = System.Drawing.Color.Green;
                    lblmessage.Text = "<b> Data deleted successfully. </b>";
                    clearData();

                }
                catch(Exception ex)
                {
                    transaction.Rollback();
                    lblmessage.Text = ex.Message;
                    lblmessage.ForeColor = System.Drawing.Color.Red;
                }
            }
    }

    public void getData()
    {
        int ProductId = Convert.ToInt32(DropDownList1.SelectedValue);

        string Species = txtSpecies.Text;
        string PerformanceClass = txtPerformanceClass.Text;
        string Warranty = txtWarranty.Text;
        string Construction = txtConstruction.Text;
        string FinishSystem = txtFinishSystem.Text;

        string color=txtColor.Text;
        string GlossLevel=txtGlossLevel.Text;
        string DesignOrTexture=txtDesignOrTexture.Text;
        string EdgeType = txtEdgeType.Text;

        string Width=txtWidth.Text;
        string Length=txtLength.Text;
        string Thickness=txtThickness.Text;
        string SquareFootPerCarton = txtSqaureFootPerCarton.Text;

        string DIYLevel=txtDIYLevel.Text;
        string InstallationLocation=txtInstallationLocation.Text;
        string InstallationMethod = txtInstallationMethod.Text;
    }

    public void clearData()
    {
      //  DropDownList1.SelectedIndex = 0;
        txtSpecies.Text = "";
        txtPerformanceClass.Text="";
        txtWarranty.Text = "";
        txtConstruction.Text = "";
        txtFinishSystem.Text = "";

        txtColor.Text="";
        txtGlossLevel.Text="";
        txtDesignOrTexture.Text="";
        txtEdgeType.Text="";

        txtWidth.Text="";
        txtLength.Text="";
        txtThickness.Text="";
        txtSqaureFootPerCarton.Text="";

        txtDIYLevel.Text="";
        txtInstallationLocation.Text="";
        txtInstallationMethod.Text="";
    }
    
}