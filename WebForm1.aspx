<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EyeBuyStore.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" BorderColor="#660066" ForeColor="#3333CC" Text="Button" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddItems.aspx">show</asp:HyperLink>
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="#FF66FF" ForeColor="#009933" Text="Label"></asp:Label>



        </div>
    </form>
</body>
</html>
