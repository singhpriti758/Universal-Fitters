<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" MasterPageFile="~/AdminMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contentDiv" style="width:1200px;margin-left:50px">
        <div class="row " style="margin-left: 0px; width: 1200px">
            <div class="col-lg-12 alert-info">
                <asp:Label ID="Label1" style="margin-left:450px" Font-Size="XX-Large" runat="server" Text="----Add Product----"></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">

            <div class="col-lg-6">
                <asp:DropDownList ID="DropDownList1" ValidationGroup="ap" class="dropdown btn-primary btn-lg" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="ap" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>

            </div>

            <div class="col-lg-6">
                <asp:TextBox ID="txtProductName" ValidationGroup="ap" class="form-control" placeholder="Enter Product Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ap" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>

            </div>
        </div>
        <br />
         <div class="row">
            <div class="col-lg-6">
                <div class="row" style="margin-left:2px">
                <span class="btn btn-default btn-file"><span>Upload PDF:</span></span> <asp:FileUpload ID="flPdf" ValidationGroup="ap" runat="server" />    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="ap" ErrorMessage="*" ForeColor="red" ControlToValidate="flPdf"></asp:RequiredFieldValidator>
                </div></div>
             <div class="col-lg-6">
                    <asp:TextBox ID="txtEngineered" class="form-control" ValidationGroup="ap" placeholder="Engineered" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="ap" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtEngineered"></asp:RequiredFieldValidator>
                  
                </div>
             </div> 
        <br />
         <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <asp:TextBox ID="txtPricePerSquareFeet" ValidationGroup="ap" placeholder="Price Per Square Feet" class="form-control" runat="server" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="ap" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="txtPricePerSquareFeet"></asp:RequiredFieldValidator>
                    </div>
                </div>
             
             </div>
        <br />
        <div class="row">
        <div class="col-lg-6">
            <div class="row" style="margin-left:2px">
                <span class="btn btn-default btn-file"><span>Upload Image 1 :</span></span><asp:FileUpload ID="flImage1" ValidationGroup="ap" runat="server" />    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ap" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="flImage1"></asp:RequiredFieldValidator>
                </div>
                </div>
            <div class="col-lg-6">
                <div class="row" style="margin-left:2px">
                    <span class="btn btn-default btn-file"><span>Upload Image 2 :</span></span>
                    <asp:FileUpload ID="flImage2" ValidationGroup="ap"  runat="server" />
                            <asp:RequiredFieldValidator ValidationGroup="ap" ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="flImage2"></asp:RequiredFieldValidator>
                    </div>
                </div>
        </div>
        <br />
        <asp:Button ID="btnInsert" ValidationGroup="ap" runat="server" CssClass="btn btn-info btn-block" Text="Insert" OnClick="btnInsert_Click" />
        <br />
        <asp:Label ID="lblmessage" runat="server" Text="Label" Visible="false"></asp:Label>
         </div>

        </asp:Content>
