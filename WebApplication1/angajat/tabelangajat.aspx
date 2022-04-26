<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tabelangajat.aspx.cs" Inherits="WebApplication1.tabelangajat" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="admin.css" />
    <title>Tabel Angajati</title>
    
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 105px;
        }
        </style>
     
    <link rel="stylesheet" href="AdminStyles.css" />
    <link rel="stylesheet" href="admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="recent-news-boxes.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 194px;
        }
    </style>
    
</head>
<body>
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
    <form id="form1" runat="server">
        <center><div>
            <br />
            <h1>Adaugarea angajatilor</h1><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" CausesValidation="False" Text="Afisare Angajati" Width="110px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            IDDepartament&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtIDDep" runat="server"></asp:TextBox>
            &nbsp;<asp:CompareValidator ID="cv" runat="server" ForeColor="Red" ControlToValidate="txtIDDep" Type="Integer"
   Operator="DataTypeCheck" ErrorMessage="Value must be an integer!"  />
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtIDDep"
                        runat="server" />
            <br />
            <br />
            Nume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNume"
                        runat="server" />
                <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Prenume&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtPrenume"
                        runat="server" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            CNP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCNP" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtCNP" ID="RegularExpressionValidator3" ValidationExpression = "^[0-9]{13,13}$" runat="server" ErrorMessage="Introduceti doar siruri de 13 cifre">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtCNP"
                        runat="server" />
            <br />
            <br />
            Strada&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtStrada" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtStrada" ID="RegularExpressionValidator4" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtStrada"
                        runat="server" />
            <br />
            <br />
            Oras&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtOras" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtOras" ID="RegularExpressionValidator5" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtOras"
                        runat="server" />
            <br />
            <br />
            GEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White">
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem Selected="True">F</asp:ListItem>
                        </asp:DropDownList>
            

            <br />
            <br />
            Data nasterii&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtData" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtData" ID="RegularExpressionValidator6" ValidationExpression = "^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$" runat="server" ErrorMessage="Intoduceti data in formatul yyyy-mm-dd">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtData"
                        runat="server" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Functie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFunctie" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtFunctie" ID="RegularExpressionValidator7" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtFunctie"
                        runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtEmail" ID="RegularExpressionValidator8" ValidationExpression = "^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" runat="server" ErrorMessage="Introduceti email in forma cuvant@cuvant.cuvant">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtEmail"
                        runat="server" />
            <br />
            <br />
            Salariu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtSalariu" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtSalariu" ID="RegularExpressionValidator9" ValidationExpression = "^[0-9]{1,10}$" runat="server" ErrorMessage="Introduceti doar numere maxim de 10 cifre">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtSalariu"
                        runat="server" />
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Introducere angajat" Width="137px" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <br />
        </div>

        <div class="auto-style1">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
            </center>
    </form>
</body>
</html>
