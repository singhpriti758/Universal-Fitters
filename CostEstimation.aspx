<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CostEstimation.aspx.cs" Inherits="CostEstimation" MasterPageFile="~/UserMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-left:500px">
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Price Estimator"></asp:Label>
    </div>
    <br /><br />
    <div class="row" style="margin-left: 50px;">
        <div class="col-lg-4">
            <div>
            <asp:Label ID="lblProductName" runat="server" Font-Size="Large" Font-Bold="true" Text=""></asp:Label>
                </div>
            <div>
            <asp:Image ID="imgProduct" Width="400px" Height="275px" runat="server" />
                </div>
        </div>
        <div class="col-lg-7">
            <asp:TextBox ID="txtheight" ValidationGroup="ce" CssClass="form-control" ToolTip="Height of the Room(feet)" runat="server" placeholder="Height of the Room(feet)" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ce" runat="server" ErrorMessage="*" ControlToValidate="txtheight" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtwidth" ValidationGroup="ce" CssClass="form-control" ToolTip="Width of the Room(feet)" placeholder="Width of the Room(feet)" runat="server" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="ce" ErrorMessage="*" ControlToValidate="txtwidth" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" ValidationGroup="ce" CssClass="btn btn-block btn-success" runat="server" Text="Calculate" OnClick="Button1_Click" />
            <br />
            <br />
            <div class="panel panel-primary" id="divEstimate" runat="server" visible="false">
                <div class="panel-heading">
                    Estimates :
                </div>
                <div class="panel-body">
                    <asp:Label ID="lblcost" CssClass="text-info" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>
