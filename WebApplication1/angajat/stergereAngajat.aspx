<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stergereAngajat.aspx.cs" Inherits="WebApplication1.stergereAngajat" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../admin.css" />
    
    
    
    <link rel="stylesheet" href="AdminStyles.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="recent-news-boxes.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="topnav" runat="server">
<%--  <a class="active" href="#home">Home</a>--%>
  <a class="active" href="..\admin.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#8"></a>
  <a href="#3"></a>
  <a href="#4"></a>
  <a href="#5"></a>
  <a href="#6"></a>
  <a href="stergereAngajat.aspx">Stergere Angajat</a>
  <a href="tabelangajat.aspx">Introducere Angajat</a>
  <a href="updateAngajat.aspx">Update Angajat</a>
  <a href="raport.aspx">Raport Angajati</a>
</div>
      <center>      <h1> &nbsp;</h1>
            <h1> Stergere Angajat</h1>
            <br />
            (Stergerea angajatului se face dupa prenumele si numele acestuia)
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" CausesValidation="False" Text="Afisare Angajati" Width="110px" />
            <br />
            <br />
            <br />
            Nume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNume"
                        runat="server" />
                <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Prenume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtPrenume" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtPrenume"
                        runat="server" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
          &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Stergere angajat" />
            <br />
            <br />
            <br />
            <br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
          </center>
        </div>
    </form>
</body>
</html>
