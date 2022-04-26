using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class tabelangajat : System.Web.UI.Page

    {
        SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True");
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT* from Angajat";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> IDAngajat </th> <th> IDDepartament </th> <th> Prenume </th> <th> Nume </th> <th> CNP </th><th> Strada  </th><th> Oras </th><th> GEN </th><th> Data Nasterii </th><th> Functie </th><th> Email </th><th> Salariu </th>");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[0] + "</td>");
                    table.Append("<td>" + rd[1] + "</td>");
                    table.Append("<td>" + rd[2] + "</td>");
                    table.Append("<td>" + rd[3] + "</td>");
                    table.Append("<td>" + rd[4] + "</td>");
                    table.Append("<td>" + rd[5] + "</td>");
                    table.Append("<td>" + rd[6] + "</td>");
                    table.Append("<td>" + rd[7] + "</td>");
                    table.Append("<td>" + rd[8] + "</td>");
                    table.Append("<td>" + rd[9] + "</td>");
                    table.Append("<td>" + rd[10] + "</td>");
                    table.Append("<td>" + rd[11] + "</td>");

                    table.Append("</tr>");

                }
            }
            else
            {
                //eroare
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            rd.Close();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int a;

            SqlCommand cmd = new SqlCommand("insert into Angajat(IDDepartament,Nume,Prenume,CNP,Strada,Oras,GEN,DataNasterii,Functie,Email,Salariu) " +
                "values (@IDDep,@Nume,@Prenume,@CNP,@Strada,@Oras,@Gen,@Datanastere,@Functie,@email,@salariu)", con2);

            string test = "";
            string IDD = txtIDDep.Text;

            cmd.Parameters.AddWithValue(@"IDDep", IDD);
            cmd.Parameters.AddWithValue(@"Nume", txtNume.Text);
            cmd.Parameters.AddWithValue(@"Prenume", txtPrenume.Text);
            cmd.Parameters.AddWithValue(@"CNP", txtCNP.Text);
            cmd.Parameters.AddWithValue(@"Strada", txtStrada.Text);
            cmd.Parameters.AddWithValue(@"Oras", txtOras.Text);
            if (DropDownList1.SelectedIndex == 0)
            {
                cmd.Parameters.AddWithValue(@"Gen", "M");

            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                cmd.Parameters.AddWithValue(@"Gen", "F");
            }

            cmd.Parameters.AddWithValue(@"Datanastere", txtData.Text);
            cmd.Parameters.AddWithValue(@"Functie", txtFunctie.Text);
            cmd.Parameters.AddWithValue(@"email", txtEmail.Text);
            cmd.Parameters.AddWithValue(@"salariu", txtSalariu.Text);
            con2.Open();

            a = cmd.ExecuteNonQuery();
            if (a == 0)
                Label1.Text = "Eroare";
            else
                Response.Write("Angajat introdus cu succes !");
            con2.Close();


            txtIDDep.Text = "";
            txtPrenume.Text = "";
            txtNume.Text = "";
            txtCNP.Text = "";
            txtStrada.Text = "";
            txtOras.Text = "";

            txtData.Text = "";
            txtFunctie.Text = "";
            txtEmail.Text = "";
            txtSalariu.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Server.Transfer("../admin.aspx");
        }
    }
}