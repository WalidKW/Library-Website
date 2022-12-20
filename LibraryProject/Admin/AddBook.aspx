<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="LibraryProject.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 55%;
        }
        .auto-style7 {
            width: 143px;
        }
        .auto-style8 {
            width: 143px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">Title:</td>
            <td>
                <asp:TextBox ID="TextBoxTitle" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Author:</td>
            <td>
                <asp:TextBox ID="TextBoxAuthor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Description:</td>
            <td>
                <asp:TextBox ID="TextBoxDesc" runat="server" Height="89px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Image:</td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>

                Add:</td>
            <td>

                <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add" Height="40px" Width="87px" />
                <asp:SqlDataSource ID="SqlDataSourceAdd" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>
