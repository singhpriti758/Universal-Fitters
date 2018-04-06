<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="floorDetails.aspx.cs" Inherits="floorDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-left:50px">
        <div>
            <div>
            <a data-toggle="pill" href="#img1Div">
                <asp:ImageButton ID="ImageButton1" Width="100px" Height="100px" runat="server" />
            </a></div>
            <div>
            <a data-toggle="pill" href="#img2Div">
                <asp:ImageButton ID="ImageButton2" Width="100px" Height="100px" runat="server" />
            </a></div>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="tab-content">
                <div id="img1Div" class="tab-pane fade in active">
                    <asp:Image ID="Image1" Height="400px" Width="700px" runat="server" />
                </div>
                <div id="img2Div" class="tab-pane fade">
                    <asp:Image ID="Image2" Height="400px" Width="700px" runat="server" />
                </div>
            </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div>
            <div>
                <asp:Label ID="lblName" Font-Bold="true" Font-Size="X-Large" runat="server" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblDesc" runat="server" Font-Size="Large" Text="Label"></asp:Label>
            </div>
            <div>
                <asp:LinkButton ID="LinkButton1" OnClick="goToPricing" runat="server">Price this floor</asp:LinkButton>
            </div>
        </div>
    </div>
    <br />
    <div id="divDetails" runat="server" style="margin-left:50px;width:1200px;display:none">
    <div class="row" style="margin-left:50px" >
        <h1 style="margin-left:500px">Details: <span class="glyphicon glyphicon-paperclip"></span></h1> 
    </div>
        <div class="panel panel-primary">
            <div class="panel-heading">Specifications:</div>
            <div class="panel-body">
                <asp:DetailsView ID="DetailsView1" CssClass="table" HeaderStyle-Font-Size="XX-Large" runat="server" AutoGenerateRows="false">
                    <Fields>
                        <asp:BoundField DataField="Species" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Species" />
                        <asp:BoundField DataField="PerformanceClass" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Performance Class" />
                        <asp:BoundField DataField="Warranty" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Warranty" />
                        <asp:BoundField DataField="Construction" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Construction" />
                        <asp:BoundField DataField="FinishSystem" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Finish System" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">Look:</div>
            <div class="panel-body">
                <asp:DetailsView ID="DetailsView2" AutoGenerateRows="false" CssClass="table" runat="server">

                    <Fields>
                        <asp:BoundField DataField="color" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Color" />
                        <asp:BoundField DataField="GlossLevel" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Gloss Level" />
                        <asp:BoundField DataField="DesignOrTexture" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Design Or Texture" />
                        <asp:BoundField DataField="EdgeType" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="EdgeType" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">Measurement:</div>
            <div class="panel-body">
                <asp:DetailsView ID="DetailsView3" AutoGenerateRows="false" CssClass="table" runat="server">

                    <Fields>
                        <asp:BoundField DataField="Width" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Width" />
                        <asp:BoundField DataField="Length" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Length" />
                        <asp:BoundField DataField="Thickness" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Thickness" />
                        <asp:BoundField DataField="SquareFootPerCarton" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Square Foot Per Carton" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
        <div class="panel panel-primary">
            <div class="panel-heading">Installation:</div>
            <div class="panel-body">
                <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="false" CssClass="table">
                    <Fields>
                        <asp:BoundField DataField="DIYLevel" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="DIY Level" />
                        <asp:BoundField DataField="InstallationLocation" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Installation Location" />
                        <asp:BoundField DataField="InstallationMethod" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" HeaderText="Installation Method" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div></div>
</asp:Content>

