<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Resturant.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style7 {
            width: 47px;
        }
        .auto-style8 {
            height: 26px;
            width: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sign in</strong></td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>&nbsp;Username:</strong></td>
                <td>
                    <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Password:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2"><strong>
                    <asp:CheckBox ID="CheckBoxLogin" runat="server" Text="Remember Me" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2"><strong>
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Sign in" />
                    <br />
                    <asp:Label ID="LabelMessage" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                    </strong>&nbsp;
                    <br />
                    <asp:SqlDataSource ID="SqlDataSourceLogin" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User] WHERE ([Username] = @Username)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBoxUserName" Name="Username" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
