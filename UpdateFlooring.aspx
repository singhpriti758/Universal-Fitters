<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateFlooring.aspx.cs" Inherits="UpdateFlooring" MasterPageFile="~/AdminMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row " style="margin-left: 50px; width: 1200px">
            <div class="col-lg-12 alert-info">
                <asp:Label ID="Label1" style="margin-left:400px" Font-Size="XX-Large" runat="server" Text="----Update Flooring----"></asp:Label>
            </div>
        </div>
    <br />
    <div style="margin-left:50px;width:1200px">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" AllowPaging="True" PageSize="4" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ProductType" HeaderText="ProductType" SortExpression="ProductType" />
                <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [tblFlooring] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblFlooring] ([ProductType], [ImagePath]) VALUES (@ProductType, @ImagePath)" SelectCommand="SELECT * FROM [tblFlooring] ORDER BY [Id]" UpdateCommand="UPDATE [tblFlooring] SET [ProductType] = @ProductType, [ImagePath] = @ImagePath WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductType" Type="String" />
                <asp:Parameter Name="ImagePath" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductType" Type="String" />
                <asp:Parameter Name="ImagePath" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
   </asp:Content>
