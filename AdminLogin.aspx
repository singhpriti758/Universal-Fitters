<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <script src="JQuery%20Libraries/jquery.min.js"></script>
    <link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css" rel="stylesheet" />
    <script src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
    <link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
      <div class="row" style="margin-left: 50px">
            <div>
                <asp:Image ID="imgLogo" ImageUrl="~/Extras/logo.PNG" runat="server" />
            </div>
            <div>
                <div>
                    <asp:Label ID="lblName" CssClass="text-info" Font-Size="60px" Style="margin-left: 200px" runat="server" Text="Universal Fitters"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="Label1" Style="margin-left: 300px" runat="server" Text="Universal Fitters Technical Services LLC"></asp:Label>
                </div>
            </div>
        </div>
      <div class="contentDiv" style="width: 1200px; margin-left: 50px">
          <asp:Label ID="Label2" CssClass="text-success" style="margin-left:500px" Font-Size="XX-Large" runat="server" Text="Login"></asp:Label>
          <br /><br />
          <div class="col-lg-6" style="margin-left:250px">
              <div class="row">
                  <asp:TextBox ID="txtUsername" placeholder="Username" ToolTip="Username" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" runat="server" ErrorMessage="Enter User Name" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <div class="row">
                  <asp:TextBox ID="txtPassword" placeholder="Password" ToolTip="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" SetFocusOnError="true" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              <div class="row">
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger btn-block" Text="Login" OnClick="Button1_Click" />
              </div>
              <div class="row">
                  <asp:Label ID="lblmessage" runat="server" Visible="true"></asp:Label>
              </div>
          </div>
      </div>
   </form>
  </body>
    </html>
