<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="Assignment.Menu" %>
<nav class="navbar navbar-default">
    <div>
        <div class="navbar-header">
            <a class="navbar-brand" href="Customer.aspx"
                style="font-size:36px; font-weight:bold; color:#3399FF;">
                ZZ Fashion
            </a>
        </div>
        <div class="collapse navbar-collapse" id="customerNavbar">
            <asp:Button ID="btnLogOut" runat="server" Text="Log Out"
                CssClass="btn btn-link navbar-btn navbar-right" CausesValidation="False" OnClick="btnLogOut_Click" />
        </div>
    </div>
</nav>