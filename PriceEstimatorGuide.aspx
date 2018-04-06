<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="PriceEstimatorGuide.aspx.cs" Inherits="PriceEstimatorGuide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="margin-left:400px">
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="XX-Large" Text="3 Easy Steps"></asp:Label>
        </div>
        <br /><br />
        <div class="row">
            <div>
                <div>
                <asp:Image ID="Image1" Height="200px" Width="400px" ImageUrl="~/Extras/browse.png" runat="server" />
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="1.Select a floor you like"></asp:Label></div>
            </div>
            &nbsp;
            <div>
                <div>
                <asp:Image ID="Image2" Height="200px" Width="400px" ImageUrl="~/Extras/click.png" runat="server" />
                </div><div><asp:Label ID="Label3" runat="server" Text="2.Click 'Price this Floor'"></asp:Label></div>
            </div>
            &nbsp;
            <div>
                <div>
                <asp:Image ID="Image3" Height="200px" Width="350px" ImageUrl="~/Extras/pe.png" runat="server" />
                </div><div><asp:Label ID="Label4" runat="server" Text="3.Use Price Estimator to get your estimate"></asp:Label></div>
            </div>
        </div>
        <br /><br />
        <div style="width:400px;margin-left:300px">
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/BrowseFlooring.aspx" CssClass="btn btn-block btn-warning" Text="Get Started" />
        </div>
    </div>
</asp:Content>

