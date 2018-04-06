<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" MasterPageFile="~/UserMasterPage.master" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script type="text/javascript">
        function manageMenu()
        {

        }
    </script>
    <script src="JQuery%20Libraries/jquery.min.js"></script>
    <link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.css" rel="stylesheet" />
    <script src="bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />
    <link href="bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <hr class="navHr" />
    <div id="navBar">
    <button type="button" id="btnProduct" onclick="manageMenu(this.id);" class="button" data-toggle="collapse" data-target="#productsMenu">Products</button>
       <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
   <%-- <button type="button" id="btnIdeas" onclick="manageMenu(this.id);" class="button" data-toggle="collapse" data-target="#ideasMenu">Ideas</button>
         <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" id="btnLearn" onclick="manageMenu(this.id);" class="button" data-toggle="collapse" data-target="#learnMenu">Learn</button>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" id="btnInstall" onclick="manageMenu(this.id);" class="button" data-toggle="collapse" data-target="#installationMenu">Installation</button>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="button" id="btnSupport" onclick="manageMenu(this.id);" class="button" data-toggle="collapse" data-target="#supportMenu">Support</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
   <%-- <button type="button" class="button" data-toggle="collapse" data-target="#demo">My Account</button>
        </div>
    <hr class="navHr" />
    <div id="productsMenu" class="collapse in">
         <table>
             <tr style="font-weight:bold">
                 <td>Flooring Products<hr /></td>
                 <td>Tools<hr /></td>
             </tr>
             <tr>
                 <td>
                     <asp:LinkButton ID="LinkButton1" class="menuLinks" OnClick="redirectFunction" runat="server">Browse Flooring</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton2" class="menuLinks" OnClick="redirectFunction" runat="server">Price Estimator</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton3" class="menuLinks" OnClick="redirectFunction" runat="server">Hardwood</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton4" class="menuLinks" OnClick="redirectFunction" runat="server">Laminate</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton5" class="menuLinks" OnClick="redirectFunction" runat="server">Luxury Vinyl</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton6" class="menuLinks" OnClick="redirectFunction" runat="server">Vinyl Sheet</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton7" class="menuLinks" OnClick="redirectFunction" runat="server">Vinyl Tile</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton8" class="menuLinks" OnClick="redirectFunction" runat="server">Linoleum</asp:LinkButton></td>
             </tr>
         </table>
  </div>
    <div id="ideasMenu" class="collapse in">
         <table>
             <tr style="font-weight:bold">
                 <td>Tools<hr /></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton9" class="menuLinks" OnClick="redirectFunction" runat="server">My Project</asp:LinkButton></td>
             </tr>
         </table>
  </div>
    <div id="learnMenu" class="collapse in">
         <table>
             <tr style="font-weight:bold">
                 <td>All about Flooring<hr /></td>
                 <td>Flooring guides<hr /></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton10" class="menuLinks" OnClick="redirectFunction" runat="server">Flooring 101 Overview</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton11" class="menuLinks" OnClick="redirectFunction" runat="server">Hardwood</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton12" class="menuLinks" OnClick="redirectFunction" runat="server">Flooring 101:Floor Design</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton13" class="menuLinks" OnClick="redirectFunction" runat="server">Laminate</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton14" class="menuLinks" OnClick="redirectFunction" runat="server">Installation</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton15" class="menuLinks" OnClick="redirectFunction" runat="server">Luxury Vinyl</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton16" class="menuLinks" OnClick="redirectFunction" runat="server">Floor Care</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton17" class="menuLinks" OnClick="redirectFunction" runat="server">Linoleum</asp:LinkButton></td>
             </tr>
         </table>
  </div>
    <div id="installationMenu" class="collapse in">
         <table>
             <tr>
                 <td><asp:LinkButton ID="LinkButton18" class="menuLinks" OnClick="redirectFunction" runat="server">Installation Overview</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton19" class="menuLinks" OnClick="redirectFunction" runat="server">Hardwood</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton20" class="menuLinks" OnClick="redirectFunction" runat="server">Laminate</asp:LinkButton></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton21" class="menuLinks" OnClick="redirectFunction" runat="server">Luxury Vinyl</asp:LinkButton></td>
             </tr>
         </table>
  </div>
    <div id="supportMenu" class="collapse in">
         <table>
             <tr style="font-weight:bold">
                 <td>Support centre<hr /></td>
                 <td>Need Help?<hr /></td>
             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton22" class="menuLinks" OnClick="redirectFunction" runat="server">Customer Support</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton23" class="menuLinks" OnClick="redirectFunction" runat="server">Call Customer Care</asp:LinkButton></td>

             </tr>
             <tr>
                 <td><asp:LinkButton ID="LinkButton24" class="menuLinks" OnClick="redirectFunction" runat="server">Contact Us</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton25" class="menuLinks" OnClick="redirectFunction" runat="server">Monday - Friday</asp:LinkButton></td>
             </tr>
         </table>
  </div>
        </form>--%>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<%-- 
</body>
</html>--%>
