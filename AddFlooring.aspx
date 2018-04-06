<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFlooring.aspx.cs" Inherits="AddFlooring" MasterPageFile="~/AdminMasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row " style="margin-left: 50px; width: 1200px">
            <div class="col-lg-12 alert-info">
                <asp:Label ID="Label1" style="margin-left:400px" Font-Size="XX-Large" runat="server" Text="----Add Flooring----"></asp:Label>
            </div>
        </div>
    <br />
    <div style="margin-left:50px;width:1200px">
        <div class="row">
            <div class="col-lg-6">
                    <asp:TextBox ID="txtProductType" ValidationGroup="af" placeholder="Enter Flooring Type" ToolTip="Flooring Type" CssClass="form-control" runat="server" OnTextChanged="txtProductType_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="af" runat="server" ErrorMessage="*" ControlToValidate="txtProductType" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-6">
                    <div class="row">
                <span class="btn btn-default btn-file"><span>Upload Image:</span></span> <asp:FileUpload ID="FileUpload1" ValidationGroup="af" runat="server" CssClass="dropdown" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="af" ControlToValidate="txtProductType" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <br />
        <asp:Button ID="btnSubmit" CssClass="btn btn-info btn-block" ValidationGroup="af" runat="server" Text="Insert" OnClick="btnSubmit_Click" />
        <br />
        <asp:Label ID="lblmessage" visible="false" runat="server" Text="Label" ForeColor="red"></asp:Label>
    </div>
    </asp:Content>
