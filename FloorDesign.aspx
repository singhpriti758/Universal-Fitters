<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="FloorDesign.aspx.cs" Inherits="FloorDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:50px;width:1200px">
    <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Large" Text="Color & Palette"></asp:Label>
    <hr /></div>
    <div class="row" style="margin-left:50px;width:1200px">
        <div class="col-lg-6" style="font-size:large">
            Have you ever noticed that walking into a brightly colored room can lift your spirits? In the same way, flooring design elements like styles, colors, textures and finishes influence the way a room feels. Vast rooms can be made to feel cozier with warm, matte tone floors. Add sophistication with a dark wood floor. Use light colors to make a room feel more airy. Home design and home improvement magazines, and interior décor catalogs are rich in photography – terrific sources for ideas, inspiration, and examples of colors working together to create a mood.
        </div>
        <div class="col-lg-6">
            <asp:Image ID="Image1" ImageUrl="~/Extras/ColornPalette.jpg" Height="250px" Width="500px" runat="server" />
        </div>
    </div>
    <div style="margin-left:50px;width:1200px">
    <asp:Label ID="Label2" runat="server" Font-Bold="true" Font-Size="Large" Text="Pattern & Texture"></asp:Label>
    <hr /></div>
    <div class="row" style="margin-left:50px;width:1200px">
        <div class="col-lg-6" style="font-size:large">
            If you want to capture old world charm or create timeless appeal, look to patterns and texture in your flooring design ideas. Checkerboard patterns feel ageless and can be designed in wood, stone, tile or vinyl. Parquet wood flooring lends a refined look to areas like foyers and living rooms. Enhance any room by designing your own unique borders with two or more colors of hardwood. You can even get bolder by mixing flooring types like stone and wood to make eye-catching designs with global flair.
        </div>
        <div class="col-lg-6">
            <asp:Image ID="Image2" ImageUrl="~/Extras/PatternnTexture.jpg" Height="250px" Width="500px" runat="server" />
        </div>
    </div>
    <div style="margin-left:50px;width:1200px">
    <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Size="Large" Text="Styles & Trends"></asp:Label>
    <hr /></div>
    <div class="row" style="margin-left:50px;width:1200px">
        <div class="col-lg-6" style="font-size:large">
            Choosing a flooring design to complement your home and décor can be a creative and enjoyable process. Here is a how-to tip from professional designers who are always on the lookout for colors, color combinations, textures, finishes, accessories and items they find interesting. Collect images of colors, textures, furnishings and accessories that appeal to you and save them in My Project. Try Design a Room to see your vision come to life in a room like yours.
        </div>
        <div class="col-lg-6">
            <asp:Image ID="Image3" ImageUrl="~/Extras/StylesnTrends.jpg" Height="250px" Width="500px" runat="server" />
        </div>
    </div>
</asp:Content>

