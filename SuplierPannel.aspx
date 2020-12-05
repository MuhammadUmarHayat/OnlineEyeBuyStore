﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuplierPannel.aspx.cs" Inherits="EyeBuyStore.SuplierPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            color: #660066;
        }
        .auto-style3 {
            color: #660066;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">
                        <h1>
                             <strong>Suplier Pannel</strong>
                        </h1>
                       

                    </td>
                </tr>
                <tr>
                    <td colspan="3">

                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SuplierPannel.aspx">Supplier Pannel</asp:HyperLink>
&nbsp;|
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SupplierItems.aspx">Suplier Items</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/SupplierManagement.aspx">Supplier Management</asp:HyperLink>
&nbsp; |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/LogOut.aspx">Log Out</asp:HyperLink>


                    </td>
                </tr>
                <tr>
                    <td><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>