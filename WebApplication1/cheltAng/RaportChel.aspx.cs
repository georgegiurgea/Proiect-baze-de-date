using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1.cheltAng
{
    public partial class RaportChel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select an.Nume,an.Prenume,chel.Obiect,chel.Valoare_obiect,chel.Data  from Angajat an inner join CheltuieliAngajati chel " +
                "on an.IDAngajat = chel.IDAngajat where chel.Data between '" + TextBox1.Text + "' and '" + TextBox2.Text + "' ";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();

            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> Nume </th><th> Prenume </th> <th> Obiect </th><th> Valoare </th> <th> Data</th>");
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
                    table.Append("</tr>");

                }
            }
            else
            {
                Response.Write("nu s-a gasit departament");
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            rd.Close();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = " ";
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select DISTINCT de.NumeDepartament,CAST(ROUND(AVG(chel.Valoare_obiect),2) as decimal(10,2)) as medie from Angajat " +
                "an inner join Departamente de on an.IDDepartament=de.IDDepartament inner join CheltuieliAngajati chel on an.IDAngajat = chel.IDAngajat where " +
                "de.NumeDepartament = '" + TextBox3.Text + "' group by de.NumeDepartament ";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> Nume </th><th> Prenume </th> <th> Salariu </th>");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[0] + "</td>");

                    if (!TextBox3.Text.Equals(""))
                        Label1.Text = "Departamentul " + TextBox3.Text + " are  media cheltuielilor de  " + rd[1] + " !";

                }
            }
            else
            {
                Response.Write("nu s-a gasit departament");
            }


            table.Append("</table>");

            rd.Close();
            con.Close();

        }
    }
}