using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocios;

namespace RRHHECU911.vistas.data
{
    public partial class zona : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarZonaXActivo();
            }

        }

        private void CargarZonaXActivo()
        {
            var Zona = dc.ListarXEstadoActivo_Zona();

            grvZona.DataSource = Zona.ToList();

           grvZona.DataBind();
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
                dc.Registro_Zona(Txt_NombreZona.Text, Txt_EstadoZona.Text);
                limpiarPantalla();
                CargarZonaXActivo();
            }

        }

        private void limpiarPantalla()
        {
            Txt_NombreZona.Text = Txt_EstadoZona.Text = "";
        }

        //ELIMINAR
        protected void grvZona_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Actualizar")
            {
                Response.Redirect("~/vistas/data/cargo.aspx?cod=" + codigo, true);
            }
            // CODIGO ELIMINAR
            else if (e.CommandName == "Eliminar")
            {

               Tbl_Zona Zo = new Tbl_Zona();
                // VARIABLE CON LAS INICIALES
                Zo =Cn_Zona.ObtenerZonaXid(codigo);
                if (Zo != null)
                {
                    Cn_Zona.delete(Zo);
                    CargarZonaXActivo();
                }
            }

        }

        protected void Btn_RegistrarZona_Click(object sender, EventArgs e)
        {
            Registrar_Zona();
        }
    }
}