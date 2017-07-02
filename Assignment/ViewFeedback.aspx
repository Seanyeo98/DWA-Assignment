<%@ Page Title="" Language="C#" MasterPageFile="~/MarketingManager.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="Assignment.ViewFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lblFeedback" runat="server" Text="Feedback From Customers"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvFeedback" runat="server" AllowPaging="True" PageSize="5" OnPageIndexChanging="gvFeedback_PageIndexChanging" CellPadding="4" AutoGenerateSelectButton="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="FeedbackRespond" runat="server" Text="Respond" OnClick="FeedbackRespond_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
