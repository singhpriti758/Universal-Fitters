<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" MasterPageFile="~/UserMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:50px">
    
        <div class="row">
            <div class="col-lg-5">
                <asp:TextBox ID="txtUsername" placeholder="Username" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" SetFocusOnError="true" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-5">
                <asp:TextBox ID="txtPassword" placeholder="Password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-lg-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" SetFocusOnError="true" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-5">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning btn-block" Text="Login" OnClick="Button1_Click" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-5">
                <asp:Label ID="lblmessage" runat="server" Visible="true"></asp:Label>
            </div>
        </div>
    </div>
    </asp:Content>