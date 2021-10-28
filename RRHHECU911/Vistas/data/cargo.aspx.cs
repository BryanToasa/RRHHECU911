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
                CargarCargoActivo();
            }
        }
        protected void Btn_RegistarCargo_Click(object sender, EventArgs e)
        {
            Registar_Cargo_Institucional();
        }
        
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
                CargarCargoActivo();
            }
        }

        private void CargarCargoActivo()
        {
            var Cargo = dc.ListarXEstadoActivo_CargoInstitucional();
            grvCargo.DataSource = Cargo.ToList();
            grvCargo.DataBind();
        }



        private void LimpiarPantalla()
        {
            TxtNombreCargo.Text = TxtEstadoCargo.Text = "";
        }

        protected void grvCargo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grvCargo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Actualizar")
            {
                Response.Redirect("~/vistas/data/cargo.aspx?cod=" + codigo, true);
            }
            // CODIGO ELIMINAR
            else if (e.CommandName == "Eliminar")
            {

                Tbl_CargoInstitucional CINT = new Tbl_CargoInstitucional();
                // VARIABLE CON LAS INICIo
                CINT = Cn_Cargos.ObtenerCargoXid(codigo);
                if (CINT != null)
                {
                   Cn_Cargos.delete(CINT);
                    CargarCargoActivo();
                }
            }

        }
    }
}