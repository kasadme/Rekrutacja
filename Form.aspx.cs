using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace WebApplication7
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Reset(object sender, EventArgs e)
        {
            try
            {
                imie.Text = string.Empty;
                drugie_imie.Text = string.Empty;
                nazwisko.Text = string.Empty;
                adres_ulica.Text = string.Empty;
                adres_nrdomu.Text = string.Empty;
                adres_nrmieszkania.Text = string.Empty;
                nr_telefonu.Text = string.Empty;
                email.Text = string.Empty;
                imie_matki.Text = string.Empty;
                imie_ojca.Text = string.Empty;
                nrtel_matki.Text = string.Empty;
                nrtel_ojca.Text = string.Empty;
                kierunek.SelectedIndex = 0;
                jezyk.SelectedIndex = 0;
                matematyka.Text = string.Empty;
                polski.Text = string.Empty;
                angielski.Text = string.Empty;
                niemiecki.Text = string.Empty;
                biologia.Text = string.Empty;
                fizyka.Text = string.Empty;

                Label1.Text = "Formularz został zresetowany";
            }
            catch
            {
                Label1.Text = "Błąd";
            }
        }


    }

       
}