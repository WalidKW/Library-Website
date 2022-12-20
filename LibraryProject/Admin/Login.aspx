<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Resturant.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="AdminStyle.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            height: 26px;
            text-align: center;
        }
        .auto-style6 {
            height: 33px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><h1><strong>Sign in</strong></h1></td>
            </tr>

            <tr>
                <td class="auto-style9"><strong>Username:<asp:TextBox ID="TextBoxUserName" runat="server" Font-Size="20px" Height="32px" Width="191px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Password:<asp:TextBox ID="TextBoxPassword" runat="server" Font-Size="20px" Height="32px" Width="191px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:CheckBox ID="CheckBoxLogin" runat="server" Text="Remember Me" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Sign in" Height="37px" Width="91px" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/main.aspx">Back</asp:HyperLink>
                    <br />
                    <asp:Label ID="LabelMessage" runat="server" ForeColor="Red"></asp:Label>
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
