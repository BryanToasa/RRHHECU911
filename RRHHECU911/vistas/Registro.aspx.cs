using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;


namespace RRHHECU911.vistas
{
    public partial class Registro : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cargar fecha automatico
            //if (!IsPostBack)
            //{
            //    txtFecha.Text = DateTime.Now.ToString("yyyy/MM/dd");
            //}

        }

        protected void Registar_Click(object sender, EventArgs e)
        {
            Registrar();
        }
        public void Registrar()
        {
            //Para la fecha
            //|| string.IsNullOrEmpty(txtFecha.text)
            if (string.IsNullOrEmpty(Nombre_car.Text) || string.IsNullOrEmpty(Estado_car.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);
            }
            else
            {
                dc.Registro_CargoInstitucional(Nombre_car.Text, Estado_car.Text);
                limpiar();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Datos Guardados ^-^')", true);
            }


        }

        private void limpiar()
        {
            Nombre_car.Text=Estado_car.Text="";
        }
    }
}