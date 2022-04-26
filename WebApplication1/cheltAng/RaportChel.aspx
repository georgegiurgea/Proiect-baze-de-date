<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RaportChel.aspx.cs" Inherits="WebApplication1.cheltAng.RaportChel" UnobtrusiveValidationMode="None" %>

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
        <a href="DelCheltAng.aspx">Sterge Cheltuieli Angajati</a>
        <a href="RaportChel.aspx">Raport Cheltuieli Angajati</a>
        <a href="#7"></a>
    </div>
        <center><p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
         <h1>Pagina pentru raport cheltuieli angajati</h1></p>
        <p>
            Ce cheltuieli are fiecare angajati in o perioada de timp:</p>
        <p>
            &nbsp;
            Introduceti inceputul perioadei&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" type="Date" Format="dd-MM-yyyy" ></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="TextBox1"
                runat="server" ID="RequiredFieldValidator1" />
            &nbsp;</p>
        <p>
            &nbsp; Finalul perioadei&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server" type="Date" Format="dd-MM-yyyy"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="TextBox2"
                runat="server" ID="RequiredFieldValidator2" />
            </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Afisare" />

        </p>
        <p>
            &nbsp;</p>
        <p>
            Media&nbsp; cheltuililor pe departamente </p>
        <p>
            &nbsp;numele departamentului
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Afisare" CausesValidation="False" />
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </center>
            </form>
</body>
</html>
