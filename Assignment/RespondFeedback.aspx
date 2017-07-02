<%@ Page Title="" Language="C#" MasterPageFile="~/MarketingManager.Master" AutoEventWireup="true" CodeBehind="RespondFeedback.aspx.cs" Inherits="Assignment.RespondFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 200px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Respond Feedback"></asp:Label>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">Feedback ID:</td>
            <td>
                <asp:TextBox ID="feedbackText" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFeedbackID" runat="server" ErrorMessage="Please enter a valid Feedback ID" ControlToValidate="feedbackText"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">StaffID:</td>
            <td>
                <asp:TextBox ID="staffIDText" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvStaffID" runat="server" ControlToValidate="staffIDText" ErrorMessage="Please enter a valid StaffID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Response:</td>
            <td>
                <asp:TextBox ID="respondText" runat="server" Height="81px" Width="338px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvReponse" runat="server" ControlToValidate="respondText" ErrorMessage="Please enter a message"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date/Time:</td>
            <td>
                <asp:Label ID="lblDateTime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnSubmitResponse" runat="server" Text="Submit" OnClick="btnSubmitResponse_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
