<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddHelpingMaterial.aspx.cs" Inherits="EyeBuyStore.AddHelpingMaterial" %>


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
 <strong>Admin Pannel: Add helping material</strong>

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
                        &nbsp;| <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/LogOut.aspx">Log Out</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td>Item ID</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="itemId" DataValueField="itemId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MYEyeStoreDBConnectionString %>" SelectCommand="SELECT DISTINCT [itemId] FROM [Items]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Audio </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Video</td>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Text </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="164px" TextMode="MultiLine" Width="384px"></asp:TextBox>
                    </td>
                    <td>&nbsp;






                        
                        
                       <asp:DataList ID="DataList1" runat="server" BackColor="#3333CC" BorderColor="#666666"

            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"

            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"

            Width="600px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemDataBound="DataList1_ItemDataBound1" UseAccessibleHeader="True" DataKeyField="itemid" OnItemCommand="DataList1_ItemCommand">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />

            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"

                HorizontalAlign="Center" VerticalAlign="Middle" />

            <HeaderTemplate>

                Our Products 

            </HeaderTemplate>

                             <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="2px" />

                             <ItemTemplate> 
 <asp:Image ID="imgEmp" runat="server" Width="100px" Height="120px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>' style="padding-left:40px"/><br />

                <b>Title :</b>

                <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("title") %>'></asp:Label>
<br />

                            <b>Unit Price :</b>

                <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("unitPrice") %>'></asp:Label>

                                 <br />

                                  <b>Item Unique ID :</b>

                <asp:Label ID="Label4" runat="server" Text='<%# Bind("itemid") %>'></asp:Label>
                                 <br />

                            <b>By :</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                                 <br />




                                
                                 <br />

                                  </ItemTemplate>












                        </asp:DataList> 
                        






















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
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
