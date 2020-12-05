<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDoctorDetails.aspx.cs" Inherits="EyeBuyStore.ViewDoctorDetails" %>

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
 <strong>Admin Pannel</strong>

                        </h1>
                       

                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx">Admin Pannel</asp:HyperLink>
&nbsp;|
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddCategory.aspx">Add Category</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/CategoryManagement.aspx">Category Management</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AddItems.aspx">Add Item</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ItemManagement.aspx">Item Management</asp:HyperLink>

                        
                        
                        
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ViewDoctorDetails.aspx">View Doctor Details</asp:HyperLink>
                        
                        
                        &nbsp;| <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/LogOut.aspx">Log Out</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="userid" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MYEyeStoreDBConnectionString %>" SelectCommand="SELECT DISTINCT [userid], [Name], [Address], [MobileNo], [Email] FROM [Users]"></asp:SqlDataSource>
                    </td>
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
