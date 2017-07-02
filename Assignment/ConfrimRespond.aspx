<%@ Page Title="" Language="C#" MasterPageFile="~/MarketingManager.Master" AutoEventWireup="true" CodeBehind="ConfrimRespond.aspx.cs" Inherits="Assignment.ConfrimRespond" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1"><strong>Respond Confirmation</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">RespondID:</td>
            <td>
                <asp:Label ID="lblRespondID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">FeedbackID:</td>
            <td>
                <asp:Label ID="lblFeedbackID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">StaffID:</td>
            <td>
                <asp:Label ID="lblStaffID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Response:</td>
            <td>
                <asp:Label ID="lblResponse" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Date/Time:</td>
            <td>
                <asp:Label ID="lblDateTime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
