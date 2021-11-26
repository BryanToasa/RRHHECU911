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
    public partial class cargo : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Listar_CargoInstitucional();
              
            }
        }
        //LISTAR
        private void Listar_CargoInstitucional()
        {
            GridView1.DataSource = from Tbl_CargoInstitucional in dc.ListarXEstadoActivo_CargoInstitucional()
                                   select Tbl_CargoInstitucional;
            GridView1.DataBind();
        }
        protected void Btn_RegistarCargo_Click(object sender, EventArgs e)
        {
            Registar_Cargo_Institucional();
            LimpiarPantalla();
        }
        //REGISTRAR
        private void Registar_Cargo_Institucional()
        {
            if (string.IsNullOrEmpty(TxtNombreCargo.Text) || string.IsNullOrEmpty(TxtEstadoCargo.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);
            }
            else
            {
                dc.Registro_CargoInstitucional(TxtNombreCargo.Text, TxtEstadoCargo.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Datos Guardados ^-^')", true);
                Listar_CargoInstitucional();
            }
        }
        //ACTUALIZAR
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int Cargo_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Nombre_Cargo = (row.FindControl("txtNomCargo") as TextBox).Text;

            Tbl_CargoInstitucional Cargo = (from q in dc.Tbl_CargoInstitucional
                                            where q.CargoIntsi_id == Cargo_id
                                            select q).First();
            Cargo.CargoInsti_nom = Nombre_Cargo;
            dc.SubmitChanges();
            GridView1.EditIndex = -1;
            Listar_CargoInstitucional();
        }
        //ElIMINAR
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);

            // CODIGO ELIMINAR
            if (e.CommandName == "Eliminar")
            {
                Tbl_CargoInstitucional CINT = new Tbl_CargoInstitucional();
                // VARIABLE CON LAS INICIO
                CINT = Cn_Cargos.ObtenerCargoXid(codigo);
                if (CINT != null)
                {
                    Cn_Cargos.delete(CINT);
                    Listar_CargoInstitucional();
                }
            }

        }
        //LIMPIAR PANTALLA
        private void LimpiarPantalla()
        {
            TxtNombreCargo.Text = TxtEstadoCargo.Text = "";
        }
        protected void grvCargo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.Listar_CargoInstitucional();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.Listar_CargoInstitucional();

        }
        protected void lnbActualizar_Click(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}