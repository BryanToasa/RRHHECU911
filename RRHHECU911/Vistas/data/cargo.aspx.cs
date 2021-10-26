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
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Datos Guardados')", true);
        }

        //protected void Btn_Guardar_Click(object sender, EventArgs e)
        //{
        //    Registrar_Cargoinstitucional();
        //}



        public void Registrar_Cargoinstitucional()
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);
            if (string.IsNullOrEmpty(Txt_Nombrecargo.Text) || String.IsNullOrEmpty(Txt_Estadocargo.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);
            }
            else
            {
                dc.Registro_CargoInstitucional(Txt_Nombrecargo.Text, Txt_Estadocargo.Text);
                Limpiar();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Datos Guardados')", true);
            }
        }

        private void Limpiar()
        {
            Txt_Nombrecargo.Text = Txt_Estadocargo.Text = "";
        }

        protected void Btn_Guardar_Click1(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);

        }
    }
}