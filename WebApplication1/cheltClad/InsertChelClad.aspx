<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertChelClad.aspx.cs" Inherits="WebApplication1.cheltClad.InsertChelClad" UnobtrusiveValidationMode="None" %>

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
            <a href="InsertChelClad.aspx">Insert Cheltuieli Cladire</a>
            <a href="StergereCheltClad.aspx">Stergere Cheltuieli Cladire</a>
            <a href="RaportChelClad.aspx">Raport Cheltuieli Cladiri</a>
            <a href="#7"></a>
        </div>
      <center>
        <p>
            &nbsp;
        </p>
        <p>
            &nbsp;
        </p>
        <h1>
            Insert Cheltuilei cladiri</h1>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CausesValidation="False" Text="Afisare cheltuieli cladiri" Width="154px" />
        </p>
          <p>
              &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Numar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNumar" runat="server"></asp:TextBox>
            &nbsp;<asp:CompareValidator ID="cv" runat="server" ForeColor="Red" ControlToValidate="txtNumar" Type="Integer"
                Operator="DataTypeCheck" ErrorMessage="Value must be an integer!" />
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNumar"
                runat="server" ID="RequiredFieldValidator7" />
        </p>
        <p>
            Denumire&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDenumire" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtDenumire" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtDenumire"
                runat="server" ID="RequiredFieldValidator2" />

        </p>
        <p>
            Valoare&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtValoare" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtValoare" ID="RegularExpressionValidator9" ValidationExpression="^[0-9]{1,10}$" runat="server" ErrorMessage="Introduceti doar numere maxim de 10 cifre">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtValoare"
                runat="server" ID="RequiredFieldValidator4" />
        </p>
        <p>
            Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtData" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtData" ID="RegularExpressionValidator6" ValidationExpression="^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$" runat="server" ErrorMessage="Intoduceti data in formatul yyyy-mm-dd">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtData"
                runat="server" ID="RequiredFieldValidator6" />
        </p>
          <p>
            <br />
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insert" />
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
    <p>
        &nbsp;
    </p>
    
</body>
</html>
