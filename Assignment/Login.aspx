<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ZZ Fashion</title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
            height: 314px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border: 1px solid #000000; margin: auto; width: auto">
            <tr>
                <td style="vertical-align: top; width: 50%;">
                    <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/logo.jpg" />
                </td>
                <td style="width: 50%">Login ID:<br />
                    <asp:TextBox ID="txtLoginID" runat="server" BackColor="#FFFFCC" ToolTip="Login ID"></asp:TextBox>
                    <br />
                    Password:<br />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" BackColor="#FFFFCC"></asp:TextBox>
                    <br />
                    <asp:RadioButton ID="rdoStaff" runat="server" Checked="True" GroupName="Users" Text="Staff" />
                    <asp:RadioButton ID="rdoCustomer" runat="server" GroupName="Users" Text="Customer" />
                    <br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#3399FF" Font-Bold="True" ForeColor="White" Height="30px" Width="80px" OnClick="btnLogin_Click" />
&nbsp;<asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/zzfashionlogo.jpg" />
                    <br />
                    Copyright (C) ZZ Fashion. All rights reserved.</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
