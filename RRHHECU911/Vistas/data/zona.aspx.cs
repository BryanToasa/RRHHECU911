using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace RRHHECU911.vistas.data
{
    public partial class zona : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

       
        protected void Btn_GuardarZona_Click(object sender, EventArgs e)
        {
            Registrar_Zona();

        }

        private void Registrar_Zona()
        {
            if (string.IsNullOrEmpty(Txt_NombreZona.Text) || string.IsNullOrEmpty(Txt_EstadoZona.Text))
            {
                //Aqui va aletar de campos vacios
            }
            else 
            {
                

            }

        }
    }
}