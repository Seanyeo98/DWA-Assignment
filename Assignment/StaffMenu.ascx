<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StaffMenu.ascx.cs" Inherits="Assignment.StaffMenu" %>
<nav class="navbar navbar-default">
    <div>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#staffNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Home.aspx"
                style="font-size:36px; font-weight:bold; color:#3399FF;">
                ZZ Fashion
            </a>
        </div>
        <div class="collapse navbar-collapse" id="staffNavbar">
            <ul class="nav navbar-nav">
                <li><a href="SalesPersonnel.aspx">Sales Personnel</a></li>
                <li><a href="MarketingManager.aspx">Marketing Manager</a></li>
                <li><a href="ProductManager.aspx">Product Manager</a></li>
            </ul>
            <asp:Button ID="btnLogOut" runat="server" Text="Log Out"
                CssClass="btn btn-link navbar-btn navbar-right" CausesValidation="False" OnClick="btnLogOut_Click" />
        </div>
    </div>
</nav>