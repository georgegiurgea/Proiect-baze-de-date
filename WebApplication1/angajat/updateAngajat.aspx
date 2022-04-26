<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateAngajat.aspx.cs" Inherits="WebApplication1.angajat.updateAngajat" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 8px;
        }
        .auto-style4 {
            margin-left: 17px;
        }
    </style>
    <link rel="stylesheet" href="AdminStyles.css" />
    <link rel="stylesheet" href="admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<link href="recent-news-boxes.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
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
            
            &nbsp;&nbsp;
            <h1>Pagina Update</h1>
            <br />
            <asp:Button ID="Button2" runat="server" Height="25px" OnClick="Button1_Click" CausesValidation="False" Text="Afisare Angajati" Width="110px" CssClass="auto-style2" />
            &nbsp;<br />
            <br />
            Update se va face dupa numele si prenumele angajatului
            <br />
            Se poate face update la Strada,Oras,Functie,Email,Salariu
            
            <br />
            <br />
            
            <br />
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Nume&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNume" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtNume"
                        runat="server" ID="RequiredFieldValidator1" />
                </p>
               
            <br />
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Prenume
            <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtPrenume" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{0,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ErrorMessage="Obligatoriu" ForeColor="Red" ControlToValidate="txtPrenume"
                        runat="server" ID="RequiredFieldValidator2" />

            </p>

            
            <br />

            

            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            

            IDDepartament&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtIDDep" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cv" runat="server" ForeColor="Black" ControlToValidate="txtIDDep" Type="Integer"
   Operator="DataTypeCheck" ErrorMessage="Valoarea trebuie sa fie un numar."  />
            
            </p>
            
            <br />
            
            
            <p>
            Strada
            <asp:TextBox ID="txtStrada" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtStrada" ID="RegularExpressionValidator4" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            
            </p>
            
            <br />
            
            <p>
            Oras
            <asp:TextBox ID="txtOras" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtOras" ID="RegularExpressionValidator5" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            
            </p>
            
            <br />
            
            <p>
            Functie
            <asp:TextBox ID="txtFunctie" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtFunctie" ID="RegularExpressionValidator7" ValidationExpression = "^[\s\S]{1,40}$" runat="server" ErrorMessage="Maxim 40 de caractere permise.">
            </asp:RegularExpressionValidator>
            

            </p>
            

            
            <br />
            <p>
            Email <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtEmail" ID="RegularExpressionValidator8" ValidationExpression = "^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" runat="server" ErrorMessage="Introduceti email in forma cuvant@cuvant.cuvant">
            </asp:RegularExpressionValidator>
            
            
            </p>
            <br />
            Salariu
            <asp:TextBox ID="txtSalariu" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtSalariu" ID="RegularExpressionValidator9" ValidationExpression = "^[0-9-.]{1,10}$" runat="server" ErrorMessage="Introduceti doar numere maxim de 10 cifre">
            </asp:RegularExpressionValidator>
            
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style4" OnClick="Button4_Click" Text="Update" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Cautare" />
            <br />
            <br />
            <br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />

        </div>
        </center>
        </form>
  
</body>
</html>
