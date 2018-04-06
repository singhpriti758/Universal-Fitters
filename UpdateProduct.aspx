<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProduct.aspx.cs" Inherits="UpdateProduct" MasterPageFile="~/AdminMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row " style="margin-left: 50px; width: 1200px">
            <div class="col-lg-12 alert-info">
                <asp:Label ID="Label1" style="margin-left:400px" Font-Size="XX-Large" runat="server" Text="----Update Product----"></asp:Label>
            </div>
        </div>
    <br />
    <div style="margin-left:50px;width:1200px">
        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" PageSize="3" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductTypeId" HeaderText="ProductTypeId" SortExpression="ProductTypeId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="PdfLink" HeaderText="PdfLink" SortExpression="PdfLink" />
                <asp:BoundField DataField="Engineered" HeaderText="Engineered" SortExpression="Engineered" />
                <asp:BoundField DataField="PricePerSquareFeet" HeaderText="PricePerSquareFeet" SortExpression="PricePerSquareFeet" />
                <asp:BoundField DataField="Image1Path" HeaderText="Image1Path" SortExpression="Image1Path" />
                <asp:BoundField DataField="Image2Path" HeaderText="Image2Path" SortExpression="Image2Path" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [tblproduct] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [tblproduct] ([ProductTypeId], [ProductName], [PdfLink], [Engineered], [PricePerSquareFeet], [Image1Path], [Image2Path]) VALUES (@ProductTypeId, @ProductName, @PdfLink, @Engineered, @PricePerSquareFeet, @Image1Path, @Image2Path)" SelectCommand="SELECT * FROM [tblproduct]" UpdateCommand="UPDATE [tblproduct] SET [ProductTypeId] = @ProductTypeId, [ProductName] = @ProductName, [PdfLink] = @PdfLink, [Engineered] = @Engineered, [PricePerSquareFeet] = @PricePerSquareFeet, [Image1Path] = @Image1Path, [Image2Path] = @Image2Path WHERE [ProductId] = @ProductId">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductTypeId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="PdfLink" Type="String" />
                <asp:Parameter Name="Engineered" Type="String" />
                <asp:Parameter Name="PricePerSquareFeet" Type="Int32" />
                <asp:Parameter Name="Image1Path" Type="String" />
                <asp:Parameter Name="Image2Path" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductTypeId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="PdfLink" Type="String" />
                <asp:Parameter Name="Engineered" Type="String" />
                <asp:Parameter Name="PricePerSquareFeet" Type="Int32" />
                <asp:Parameter Name="Image1Path" Type="String" />
                <asp:Parameter Name="Image2Path" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
   </asp:Content>
