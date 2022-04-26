<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DelCheltAng.aspx.cs" Inherits="WebApplication1.cheltAng.UpdateCheltAng" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link rel="stylesheet" href="Games_Admin_Styles.css" />--%>
    <link rel="stylesheet" href="AdminStyles.css" />
    <link rel="stylesheet" href="admin.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="recent-news-boxes.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="topnav" runat="server">
            <%--  <a class="active" href="#home">Home</a>--%>
            <a class="active" href="..\admin.aspx"><i class="fa fa-fw fa-home"></i>Home</a>
            <a href="#8"></a>
  <a href="#3"></a>
            <a href="#4"></a>
            <a href="#5"></a>
            <a href="#6"></a>
            <a href="InsertCheltAng.aspx">Inserare Cheltuieli Angajati</a>
            <a href="UpdateCheltAng.aspx">Stergere Cheltuieli Angajati</a>
            <a href="RaportChel.aspx">Raport Cheltuieli Angajati</a>
            <a href="#7"></a>
        </div>
        <center><p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <p>
           <h1>Pagina de stergere cheltuieli angajati</h1>  
        </p>
            <p>
                &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CausesValidation="False" Text="Afisare cheltuieli" Width="116px" />
            <asp:Button ID="Button3" runat="server" Height="26px" CausesValidation="False" Text="Afisare Angajati" Width="110px" OnClick="Button3_Click" />
        </p>
        <p>
            Stergerea se face dupa nume si prenumele angajatului
        </p>
        <p>
            Daca un angajat are mai mult cheltuilei atunci se vor sterge toate
        </p>
        <p style="text-align:center">
            Prenume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNume"
                runat="server" ID="RequiredFieldValidator1" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPrenume" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtPrenume"
                runat="server" ID="RequiredFieldValidator2" />

        </p>
            <p style="text-align:center">
            &nbsp;
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" OnClick="Button4_Click" Text="Sterge" />
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        </center>
        <center><p style="text-align:center">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </p></center>
    </form>
</body>
</html>
