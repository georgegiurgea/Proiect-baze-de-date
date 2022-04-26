<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertCheltAng.aspx.cs" Inherits="WebApplication1.cheltAng.InsertCheltAng" UnobtrusiveValidationMode="None" %>

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
    <style type="text/css">
        .auto-style1 {
            margin-left: 32;
        }
    </style>
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
            <a href="DelCheltAng.aspx">Delete Cheltuieli Angajati</a>
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
            <h1>Pagina de adaugare a cheltuililor angajatiilor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1></p>
            <p>
                &nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CausesValidation="False" Text="Afisare cheltuieli" Width="106px" />
            <asp:Button ID="Button3" runat="server" Height="26px" CausesValidation="False" Text="Afisare Angajati" Width="110px" OnClick="Button3_Click" />
        </p>
        <p>
            Adaugarea se face dupa numele si prenumele angajatului
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            Nume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtNume" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNume"
                runat="server" ID="RequiredFieldValidator1" />
        </p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Prenume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPrenume" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtPrenume"
                runat="server" ID="RequiredFieldValidator2" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </p>
        <p>
            Obiect&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtObiect" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtObiect" ID="RegularExpressionValidator3" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtObiect"
                runat="server" ID="RequiredFieldValidator3" />

        </p>
        <p>
            Valoare&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtValoare" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtValoare" ID="RegularExpressionValidator9" ValidationExpression="^[0-9]{1,10}$" runat="server" ErrorMessage="Introduceti doar numere maxim de 10 cifre">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtValoare"
                runat="server" ID="RequiredFieldValidator4" />
        </p>
        <p>
            Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtData" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtData" ID="RegularExpressionValidator6" ValidationExpression="^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$" runat="server" ErrorMessage="Intoduceti data in formatul yyyy-mm-dd">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtData"
                runat="server" ID="RequiredFieldValidator6" />
        </p>
        <p>
            Observatii&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtObs" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtObs" ID="RegularExpressionValidator10" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </p>
        <p>
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Insert" Width="111px" />
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <p>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </p>
    </center>
            </form>
</body>
</html>
