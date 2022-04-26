<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 104px;
        }
        .auto-style2 {
            margin-left: 960px;
        }
    </style>
</head>
<body style="height: 403px; margin-top: 172px;">
    <form id="form1" runat="server">
        <div>
            
            <p class="auto-style2">
                Login&nbsp;&nbsp;&nbsp;
            </p>
            
            <table align="center">
                <tr>
                    <td class="auto-style1">Username</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" Width="134px" BorderStyle="Solid"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="134px" BorderStyle="Solid" ></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;User type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White">
                            <asp:ListItem>admin</asp:ListItem>
                            <asp:ListItem Selected="True">user</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="margin-left: 0px" Width="67px" BackColor="#FF6666" BorderStyle="Solid"  />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 11px" Text="Register" Width="71px" BackColor="#0066FF" BorderStyle="Solid" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
