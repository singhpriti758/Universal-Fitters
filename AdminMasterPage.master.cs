using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void redirectFunction(object sender, EventArgs e)
    {
        LinkButton btn = sender as LinkButton;
        Response.Write(btn.ID);
    }
    protected void logout(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }
}
