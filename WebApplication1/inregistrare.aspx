<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inregistrare.aspx.cs" Inherits="WebApplication1.inregistrare" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 840px;
        }
    </style>
</head>
<body style="margin-top: 232px">
    <form id="form1" runat="server">
        <div>
            <div>
                <p class="auto-style1">
                    Inregistrare</p>
            </div>
           <table align="center">
               <tr>
                   <td>Username</td>
                   <td>
                       <asp:TextBox ID="txtUsername" runat="server" Height="22px"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtUsername"
                        runat="server" />
                   </td>
               </tr>
               <tr>
                   <td>Password</td>
                   <td>
                       <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                   </td>
                   <td>
                      <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                        runat="server" />
                   </td>
               </tr>
               <tr>
                   <td>Email</td>
                   <td>
                       <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="Obligatoriu" ForeColor="Red"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtEmail" ErrorMessage="Email invalid" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td></td>
                   <td>
                       <asp:Button ID="Button1" runat="server" Text="Inregistrare" OnClick="Button1_Click" />
                   </td>
               <td>
                   <asp:Label ID="Label1" runat="server"></asp:Label>
               </td>
               </tr>
           </table>
        </div>
    </form>
</body>
</html>
