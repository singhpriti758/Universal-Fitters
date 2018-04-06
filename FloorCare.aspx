<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="FloorCare.aspx.cs" Inherits="FloorCare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row" style="margin-left:50px;width:1200px" >
        <asp:Label ID="Label1" style="margin-left:450px" runat="server" Font-Size="XX-Large" Text="Floor Care"></asp:Label>
    </div><br />
    <div class="row" style="margin-left: 50px; width: 1200px;font-size:large">
        <div class="col-lg-6">
            <div>
                Keep your floor beautiful and ensure it lasts by cleaning and caring for it with Armstrong floor care products made expressly for its unique material. Armstrong offers an extensive line of floor care and cleaning products for every flooring type.
            </div><br />
            <div>
                Floor Care Products:
                <ul>
                    <li>Bruce Hardwood & Laminate Floor Cleaner Trigger Spray</li>
                    <li>Bruce Fresh Finish</li>
                    <li>Bruce Replacement Terry Cloth Mop Covers</li>
                    <li>Bruce Hardwood & Laminate Floor Cleaner Refill</li>
                </ul>
            </div>
        </div>
        <div class="col-lg-6">
            <asp:Image ID="Image1" ImageUrl="~/Extras/floorcare.jpg" Width="600px" Height="300px" runat="server" />
        </div>
    </div>
</asp:Content>

