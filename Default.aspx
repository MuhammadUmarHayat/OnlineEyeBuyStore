<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EyeBuyStore.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-top: 29px;
        }
        .auto-style3 {
            color: #FF3300;
        }
        .auto-style5 {
            font-size: xx-large;
            color: #FF0066;
        }
        .auto-style6 {
            height: 59px;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>




            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style6" >
                        <h1>

 <strong>Customer Pannel</strong>
                        </h1>
                       


                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server">View Doctor Details</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogOut.aspx">LogOut</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Welcome <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style5"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Price&nbsp;
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="unitPrice" DataValueField="unitPrice">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MYEyeStoreDBConnectionString %>" SelectCommand="SELECT DISTINCT [unitPrice] FROM [Items]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Category
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Wear Type
                        <asp:DropDownList ID="DropDownList3" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Search Type&nbsp;
                        <asp:DropDownList ID="DropDownList4" runat="server">
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>Quantity
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                        </strong>&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addtocart2.aspx">Shoping</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
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


                                 <asp:DropDownList ID="DropDownList1"  runat="server">
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                     <asp:ListItem>6</asp:ListItem>
                                     <asp:ListItem>7</asp:ListItem>
                                     <asp:ListItem>8</asp:ListItem>
                                     <asp:ListItem>9</asp:ListItem>
                                     <asp:ListItem>10</asp:ListItem>
                                 </asp:DropDownList>
                                 <br />

                                  <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("itemid")%>' CommandName="addtocart" CssClass="auto-style2" Height="56px" ImageUrl="~/images/ad2.png" />
<br />
                                <br />

 <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("itemid")%>' CommandName="addtowishlist" CssClass="auto-style2" Height="56px" ImageUrl="~/images/ws2.png" />

                                 <br />

                            <b>By :</b>

                <asp:Label ID="Label3" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                                 <br />




                                
                                 <br />

                                  </ItemTemplate>












                        </asp:DataList> 
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