using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace RRHHECU911.vistas.data
{
    public partial class estructuraDos : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_RegistarEstructuraDos_Click(object sender, EventArgs e)
        {
            //Registrar_EstructuraDos();
        }

        //private void Registrar_EstructuraDos()
        //{
        //   if(string.IsNullOrEmpty(Txt_NombreEstruDos.Text) || string.IsNullOrEmpty(txt_EstadoEstuDos.Text)) 
        //    {
        //    }
        //    else
        //    {
        //        dc.Registro_EstructuraDos(Txt_NombreEstruDos.Text, txt_EstadoEstuDos.Text);
        //        limpiarPantalla();
        //        CargarEstructuraDosXActivo();
        //    }
        //}

        private void CargarEstructuraDosXActivo()
        {
            var Estructura = dc.ListarXEstadoActivo_EstructuraDos();
        }

        protected void gvrEstructuraDos_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvrEstructuraDos_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void gvrEstructuraDos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void gvrEstructuraDos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void gvrEstructuraDos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        //private void limpiarPantalla()
        //{
        //    Txt_NombreEstruDos.Text = txt_EstadoEstuDos.Text = "";
        //}
    }
}