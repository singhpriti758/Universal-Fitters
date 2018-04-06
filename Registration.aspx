<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" MasterPageFile="~/UserMasterPage.master" Inherits="CS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: 50px; width: 1200px">
        <div class="row " style="margin-left: 0px; width: 1200px">
            <div class="col-lg-12 alert-info">
                <asp:Label ID="Label1" style="margin-left:400px" Font-Size="XX-Large" runat="server" Text="----Registration----"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-6">
                <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="Username" ToolTip="Username" runat="server" /><asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername" runat="server" />
            </div>
            <div class="col-lg-6">
                <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" ToolTip="Password" runat="server" TextMode="Password" /><asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <asp:TextBox ID="txtConfirmPassword" placeholder="Re-enter Password" ToolTip="Re-enter Password" CssClass="form-control" runat="server" TextMode="Password" /><asp:CompareValidator SetFocusOnError="true" ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassword" runat="server" />
            </div>
            <div class="col-lg-6">
                <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email Address" ToolTip="Email Address" runat="server" /><asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                    ControlToValidate="txtEmail" runat="server" />
                <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <asp:TextBox ID="txtAddress" placeholder="Address" CssClass="form-control" ToolTip="Address" runat="server" TextMode="MultiLine" />
            </div>
            <div class="col-lg-6">
                <asp:TextBox ID="txtMobile" placeholder="Mobile Number" ToolTip="Mobile Number" CssClass="form-control" runat="server" MaxLength="10" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" ErrorMessage="Required" ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-12">
                <asp:Button Text="Submit" CssClass="btn btn-info btn-block" runat="server" OnClick="RegisterUser" />
            </div>
        </div>
    </div>
    </asp:Content>