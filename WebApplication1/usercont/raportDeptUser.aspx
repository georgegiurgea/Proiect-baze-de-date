<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="raportDeptUser.aspx.cs" Inherits="WebApplication1.usercont.raportDeptUser" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="admin.css" />
    <link rel="stylesheet" href="AdminStyles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="recent-news-boxes.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
     
</head>
<body>
    <div class="topnav" runat="server">
<%--  <a class="active" href="#home">Home</a>--%>
  <a class="active" href="UserPage.aspx"> Home</a>
  <a href="#8"></a>
  <a href="#3"></a>
  <a href="#4"></a>
  <a href="#5"></a>
  <a href="#6"></a>
  <a href="raportAngUser.aspx">Raport Angajati</a>
  <a href="raportDeptUser.aspx">Raport Departament</a>
  <a href="raportCheAngUser.aspx">Raport Cheltuieli Angajati</a>
  <a href="raportCheClaUser.aspx">Raport Cheltuieli Cladiri</a>
</div>
    <form id="form1" runat="server">
         <center>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <h1>
            Raport Departamente&nbsp;&nbsp;</h1>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CausesValidation="False" Text="Nume departamente" Width="138px" />
        </p>
            <p>
                &nbsp;</p>
        <p>
            Introduceti numele departamentului pentru a afla numarul de angajati din acel departament:
        </p>
        <p>
            Nume departament&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
        &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Afisare" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
        </p>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Width="211px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Style="margin-left: 0px">
        </asp:GridView>
        <p>
            &nbsp;
        </p>
        <p>
            Introduceti numele departamentului pentru a afla media salarilor angajatiolor din acel departament
        </p>
        <p>
            Nume departament&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume0" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
        &nbsp;&nbsp; <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Afisare" />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>
            &nbsp;
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
            </center>
    </form>
</body>
</html>
