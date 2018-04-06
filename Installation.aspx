<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Installation.aspx.cs" Inherits="Installation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div id="divHardwood" style="display:none" runat="server">
            <div class="row">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Hardwood"></asp:Label>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-6">
                    Even for experienced DIY enthusiasts, nail /staple down and glue down installations can be challenging. For DIY enthusiasts who choose to install hardwood themselves we recommend Lock&Fold® hardwood – it’s the fastest and easiest to install yourself without glue, nails or staples. Learn more about DIY hardwood installation to decide if you’re ready and view step-by-step instructions. Or, locate a Certified Installer near you, for guaranteed results.
               <br /><br />
                    <asp:Button ID="btnHardwood" OnClick="downloadPDF" runat="server" CssClass="btn btn-danger" Text="Download Hardwood Installation Guide" />
                     </div>
                <div class="col-lg-6">
                    <asp:Image ID="Image1" Height="300px" Width="400px" ImageUrl="~/Images/Hardwood/Images/Cherry-Amberwood-1.jpg" runat="server" />
                </div>
            </div>
        </div>
        <div id="divLaminate" style="display:none" runat="server">
            <div class="row">
                <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Laminate"></asp:Label>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-6">
                     Laminate with Lock&Fold® installation technology is one of the easiest flooring options for a DIY laminate floor installation. Get tips and download the complete installation instructions. Or, locate a Certified Installer near you, for guaranteed results.
               <br /><br />
                    <asp:Button ID="btnLaminate" OnClick="downloadPDF" runat="server" CssClass="btn btn-danger" Text="Download Laminate Installation Guide" />
                     </div>
                <div class="col-lg-6">
                    <asp:Image ID="Image2" Height="300px" Width="400px" ImageUrl="~/Images/Laminate/Images/Afzelia-1.jpg" runat="server" />
                </div>
            </div>
        </div>
        <div id="divLuxuryVinyl" style="display:none" runat="server">
            <div class="row">
                <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Luxury Vinyl"></asp:Label>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-6">
                      Luxury vinyl flooring comes in three collections: Vivero™ luxury flooring, Luxe Plank™, and Alterna™ engineered stone tile. Each line is installed differently. Read the installation instructions for the line you plan to install to make sure you have everything you need for a successful installation.
               <br /><br />
                    <asp:Button ID="btnLuxuryVinyl" OnClick="downloadPDF" runat="server" CssClass="btn btn-danger" Text="Download Luxury Vinyl Installation Guide" />
                     </div>
                <div class="col-lg-6">
                    <asp:Image ID="Image3" Height="300px" Width="400px" ImageUrl="~/Images/Luxury Vinyl/Images/Aegean Travertine-Gray Mist-1.jpg" runat="server" />
                </div>
            </div>
        </div>
        <div id="divOverview" style="display:none" runat="server">
            <div id="div1" runat="server">
            <div class="row">
                <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Hardwood"></asp:Label>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-6">
                    Even for experienced DIY enthusiasts, nail /staple down and glue down installations can be challenging. For DIY enthusiasts who choose to install hardwood themselves we recommend Lock&Fold® hardwood – it’s the fastest and easiest to install yourself without glue, nails or staples. Learn more about DIY hardwood installation to decide if you’re ready and view step-by-step instructions. Or, locate a Certified Installer near you, for guaranteed results.
               <br /><br />
                    <asp:Button ID="btnHardwood2" OnClick="downloadPDF" runat="server" CssClass="btn btn-danger" Text="Download Hardwood Installation Guide" />
                     </div>
                <div class="col-lg-6">
                    <asp:Image ID="Image4" Height="300px" Width="400px" ImageUrl="~/Images/Hardwood/Images/Cherry-Amberwood-1.jpg" runat="server" />
                </div>
            </div>
        </div>
        <div id="div2" runat="server">
            <div class="row">
                <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" Text="Laminate"></asp:Label>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-6">
                     Laminate with Lock&Fold® installation technology is one of the easiest flooring options for a DIY laminate floor installation. Get tips and download the complete installation instructions. Or, locate a Certified Installer near you, for guaranteed results.
               <br /><br />
                    <asp:Button ID="btnLaminate2" OnClick="downloadPDF" runat="server" CssClass="btn btn-danger" Text="Download Laminate Installation Guide" />
                     </div>
                <div class="col-lg-6">
                    <asp:Image ID="Image5" Height="300px" Width="400px" ImageUrl="~/Images/Laminate/Images/Afzelia-1.jpg" runat="server" />
                </div>
            </div>
        </div>
        <div id="div3" runat="server">
            <div class="row">
                <asp:Label ID="Label6" runat="server" Font-Size="XX-Large" Text="Luxury Vinyl"></asp:Label>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-6">
                      Luxury vinyl flooring comes in three collections: Vivero™ luxury flooring, Luxe Plank™, and Alterna™ engineered stone tile. Each line is installed differently. Read the installation instructions for the line you plan to install to make sure you have everything you need for a successful installation.
               <br /><br />
                    <asp:Button ID="btnLuxuryVinyl2" OnClick="downloadPDF" runat="server" CssClass="btn btn-danger" Text="Download Luxury Vinyl Installation Guide" />
                     </div>
                <div class="col-lg-6">
                    <asp:Image ID="Image6" Height="300px" Width="400px" ImageUrl="~/Images/Luxury Vinyl/Images/Aegean Travertine-Gray Mist-1.jpg" runat="server" />
                </div>
            </div>
        </div>
        </div>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="Error Downloading File"></asp:Label>
    </div>
</asp:Content>

