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
                //Listar_ZonaXActivo();
            }

        }
        ////LISTAR
        //private void Listar_ZonaXActivo()
        //{
        //    gvrZona.DataSource = from Tbl_Zona in dc.ListarXEstadoActivo_Zona()
        //                         select Tbl_Zona;
        //    gvrZona.DataBind();
        //}
        //protected void Btn_RegistrarZona_Click(object sender, EventArgs e)
        //{
        //    Registrar_Zona();
        //}
        ////REGISTRAR
        //private void Registrar_Zona()
        //{
        //    if (string.IsNullOrEmpty(Txt_NombreZona.Text) || string.IsNullOrEmpty(Txt_EstadoZona.Text))
        //    {
        //        //Aqui va aletar de campos vacios
        //    }
        //    else 
        //    {
        //        dc.Registro_Zona(Txt_NombreZona.Text, Txt_EstadoZona.Text);
        //        limpiarPantalla();
        //        Listar_ZonaXActivo();
        //    }

        //}
        ////ACTUALIZAR
        //protected void gvrZona_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    GridViewRow row = gvrZona.Rows[e.RowIndex];
        //    int Zona_id = Convert.ToInt32(gvrZona.DataKeys[e.RowIndex].Values[0]);
        //    string Nombre_Zona = (row.FindControl("txt_NomZona") as TextBox).Text;
        //    Tbl_Zona zona = (from q in dc.Tbl_Zona
        //                     where q.Zona_id == Zona_id
        //                     select q).First();
        //    zona.Zona_nom = Nombre_Zona;
        //    dc.SubmitChanges();
        //    gvrZona.EditIndex = -1;
        //    Listar_ZonaXActivo();
        //}
        ////ELIMINAR
        //protected void grvZona_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int codigo = Convert.ToInt32(e.CommandArgument);
          
        //    // CODIGO ELIMINAR
        // if (e.CommandName == "Eliminar")
        //    {

        //       Tbl_Zona Zo = new Tbl_Zona();
        //        // VARIABLE CON LAS INICIALES
        //        Zo =Cn_Zona.ObtenerZonaXid(codigo);
        //        if (Zo != null)
        //        {
        //            Cn_Zona.delete(Zo);
        //            Listar_ZonaXActivo();
        //        }
        //    }

        //}
        ////LIMPIAR PANTALLA
        //private void limpiarPantalla()
        //{
        //    Txt_NombreZona.Text = Txt_EstadoZona.Text = "";
        //}
        //protected void gvrZona_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    gvrZona.EditIndex = e.NewEditIndex;
        //    this.Listar_ZonaXActivo();
        //}
        //protected void gvrZona_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    gvrZona.EditIndex = 1;
        //    this.Listar_ZonaXActivo();
        //}
        //protected void gvrZona_RowDataBound(object sender, GridViewRowEventArgs e)
        //{

        //}

      
       
       
    }
}