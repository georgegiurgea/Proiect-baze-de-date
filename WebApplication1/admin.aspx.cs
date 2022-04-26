using System;
using System.Text;

namespace WebApplication1
{

    public partial class admin : System.Web.UI.Page
    {

        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Cache.SetNoStore();

        }




        protected void Button1_Click(object sender, EventArgs e)
        {



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("/angajat/tabelangajat.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("/angajat/stergereAngajat.aspx");
        }
    }
}