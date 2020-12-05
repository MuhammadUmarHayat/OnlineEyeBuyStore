<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestHelpingMaterial.aspx.cs" Inherits="EyeBuyStore.TestHelpingMaterial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="itemId" DataValueField="itemId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MYEyeStoreDBConnectionString %>" SelectCommand="SELECT [itemId] FROM [Items]"></asp:SqlDataSource>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="111px" TextMode="MultiLine" Width="460px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server">
                <HeaderTemplate>

                    our Items
                </HeaderTemplate>
                <ItemTemplate>

                    <asp:Image ID="Image1" runat="server"  ImageUrl='<%#DataBinder.Eval(Container.DataItem, "image") %>'  />

<br />
                    Title
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
<br />

                    <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("itemid")%>' CommandName="addtowishlist" CssClass="auto-style2" Height="56px" ImageUrl="~/images/ws2.png" />
<br />
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("itemid")%>' CommandName="addtowishlist" CssClass="auto-style2" Height="56px" ImageUrl="~/images/shopingCart.png" />

                </ItemTemplate>



            </asp:DataList>
            <br />



        </div>
    </form>
</body>
</html>
