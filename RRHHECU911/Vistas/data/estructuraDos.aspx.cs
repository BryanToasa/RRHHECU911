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
    public partial class estructuraDos : System.Web.UI.Page
    {
    //    DataClasses1DataContext dc = new DataClasses1DataContext();
    //    protected void Page_Load(object sender, EventArgs e)
    //    {
    //        if (!IsPostBack)
    //        {
    //            Listar_EstructuraDos();
    //        }
    //    }
    //    //LISTAR
    //    private void Listar_EstructuraDos()
    //    {
    //        gvrEstructuraDos.DataSource = from Tbl_EstructuraDos in dc.ListarXEstadoActivo_EstructuraDos()
    //                                      select Tbl_EstructuraDos;
    //        gvrEstructuraDos.DataBind();
    //    }
    //    protected void Btn_RegistarEstructuraDos_Click(object sender, EventArgs e)
    //    {
    //        Registrar_EstructuraDos();
    //    }
    //    //REGISTRAR
    //    private void Registrar_EstructuraDos()
    //    {
    //        if (string.IsNullOrEmpty(Txt_NomEstructuraDos.Text) || string.IsNullOrEmpty(Txt_EstaEstructuraDos.Text))
    //        {
    //        }
    //        else
    //        {
    //            dc.Registro_EstructuraDos(Txt_NomEstructuraDos.Text, Txt_EstaEstructuraDos.Text);
    //            limpiarPantalla();
    //            Listar_EstructuraDos();
    //        }
    //    }
    //    //ACTUALIZAR
    //    protected void gvrEstructuraDos_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //    {
    //        GridViewRow row = gvrEstructuraDos.Rows[e.RowIndex];
    //        int EstructuraDos_id = Convert.ToInt32(gvrEstructuraDos.DataKeys[e.RowIndex].Values[0]);
    //        string Nombre_EstructuraDos = (row.FindControl("txtNomEstruc") as TextBox).Text;

    //        Tbl_EstructuraDos estructura = (from q in dc.Tbl_EstructuraDos
    //                                        where q.EstructuraDos_id == EstructuraDos_id
    //                                        select q).First();
    //        estructura.EstructuraDos_nom = Nombre_EstructuraDos;
    //        dc.SubmitChanges();
    //        gvrEstructuraDos.EditIndex = -1;
    //        Listar_EstructuraDos();
    //    }
    //    //ELIMINAR
    //    protected void gvrEstructuraDos_RowCommand(object sender, GridViewCommandEventArgs e)
    //    {
    //        int codigo = Convert.ToInt32(e.CommandArgument);

    //        // CODIGO ELIMINAR
    //        if (e.CommandName == "Eliminar")
    //        {
    //            Tbl_EstructuraDos EstInt = new Tbl_EstructuraDos();
    //            // VARIABLE CON LAS INICIO
    //            EstInt= Cn_EstructuraDos.ObtenerEstructuraXid(codigo);
    //            if (EstInt != null)
    //            {
    //                Cn_EstructuraDos.delete(EstInt);
    //                Listar_EstructuraDos();
    //            }
    //        }
    //    }

    //    //LIMPIAR PANTALLA
    //    private void limpiarPantalla()
    //    {
    //        Txt_NomEstructuraDos.Text = Txt_EstaEstructuraDos.Text = "";
    //    }
    //    protected void gvrEstructuraDos_RowDataBound(object sender, GridViewRowEventArgs e)
    //    {

    //    }

    //    protected void gvrEstructuraDos_RowEditing(object sender, GridViewEditEventArgs e)
    //    {
    //        gvrEstructuraDos.EditIndex = e.NewEditIndex;
    //        this.Listar_EstructuraDos();

    //    }

    //    protected void gvrEstructuraDos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //    {
    //        gvrEstructuraDos.EditIndex = -1;
    //        this.Listar_EstructuraDos();
    //    }
    }
}