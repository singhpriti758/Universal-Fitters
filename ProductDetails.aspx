<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductSpecification" MasterPageFile="~/AdminMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row " style="margin-left: 50px; width: 1200px">
            <div class="col-lg-12 alert-info">
                <asp:Label ID="Label1" style="margin-left:400px" Font-Size="XX-Large" runat="server" Text="----Add Product Details----"></asp:Label>
            </div>
        </div>
    <br />
        <div style="margin-left:50px;width:1200px">
           
            <div class="row">
                <asp:Label ID="lblmessage" runat="server" Text="Label" Visible="false"></asp:Label>
            </div>
            <div class="row">
                <div class="col-lg-6">
                        <asp:DropDownList ID="DropDownList1" class="dropdown btn-primary btn-lg" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ValidationGroup="g" AutoPostBack="True" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" ValidationGroup="g" InitialValue="0" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtSpecies" CssClass="form-control" ToolTip="Species" placeholder="Species" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtSpecies" ValidationGroup="g"></asp:RequiredFieldValidator>
                   
                </div>
                </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtPerformanceClass" ToolTip="Performance Class" placeholder="Performance Class" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPerformanceClass" ValidationGroup="g"></asp:RequiredFieldValidator>
                   
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtWarranty" placeholder="Warranty" ToolTip="Warranty" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtWarranty" ValidationGroup="g"></asp:RequiredFieldValidator>
                  
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtConstruction" ToolTip="Construction" placeholder="Construction" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtConstruction" ValidationGroup="g"></asp:RequiredFieldValidator>
                   
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtFinishSystem" ToolTip="Finish System" placeholder="Finish System" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFinishSystem" ValidationGroup="g"></asp:RequiredFieldValidator>
                   
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtColor" ToolTip="Color" placeholder="Color" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtColor" ValidationGroup="g"></asp:RequiredFieldValidator>
                 
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtGlossLevel" ToolTip="Gloss Level" placeholder="Gloss Level" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtGlossLevel" ValidationGroup="g"></asp:RequiredFieldValidator>
                    </div>
              
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtDesignOrTexture" ToolTip="Design or Texture" placeholder="Design or Texture" CssClass="form-control" runat="server"></asp:TextBox>
                   
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtEdgeType" ToolTip="Edge Type" placeholder="Edge Type" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtEdgeType" ValidationGroup="g"></asp:RequiredFieldValidator>
                   
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtWidth" ToolTip="Width" placeholder="Width" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtWidth" ValidationGroup="g"></asp:RequiredFieldValidator>
                  
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtLength" ToolTip="Length" placeholder="Length" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtLength" ValidationGroup="g"></asp:RequiredFieldValidator>
                    
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                         <asp:TextBox ID="txtThickness" ToolTip="Thickness" placeholder="Thickness" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtThickness" ValidationGroup="g"></asp:RequiredFieldValidator>
                       
                    </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtSqaureFootPerCarton" ToolTip="Square Feet Per Carton" placeholder="Square Feet Per Carton" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtSqaureFootPerCarton" ValidationGroup="g"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtDIYLevel" ToolTip="DIY Level" placeholder="DIY Level" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtDIYLevel" ValidationGroup="g"></asp:RequiredFieldValidator>
                    
                </div>
                <div class="col-lg-6">
                        <asp:TextBox ID="txtInstallationLocation" ToolTip="Installation Location" placeholder="Installation Location" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtInstallationLocation" ValidationGroup="g"></asp:RequiredFieldValidator>
                   
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-lg-6">
                        <asp:TextBox ID="txtInstallationMethod" ToolTip="Installation Method" placeholder="Installation Method" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtInstallationMethod" ValidationGroup="g"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <asp:Button ID="btnInsert" CssClass="btn btn-info btn-block" runat="server" Text="Insert" ValidationGroup="g" OnClick="btnInsert_Click" />
                </div>
           
            <div class="row">
                <asp:Button ID="btnUpdate" CssClass="btn btn-success btn-block" runat="server" Text="Update" ValidationGroup="g" OnClick="btnUpdate_Click" />
            </div> 
            <div class="row">  
            <asp:Button ID="btndelete" CssClass="btn btn-warning btn-block" runat="server" Text="Delete" OnClick="btndelete_Click" ValidationGroup="g" />
            </div>
               
            <br />

        </div>
      </asp:Content>
