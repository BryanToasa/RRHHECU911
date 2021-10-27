using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace RRHHECU911.vistas.data
{
    public partial class cargo : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
           
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
                LimpiarPantalla();
            }
        }

        

        private void LimpiarPantalla()
        {
            TxtNombreCargo.Text = TxtEstadoCargo.Text = "";
        }
    }
}