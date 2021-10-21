
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace RRHHECU911.vistas.person
{
    public partial class index : System.Web.UI.Page
    {
        DataClasses1DataContext dc = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCargo();
            }

        }

        private void CargarCargo()
        {
            var Cargo = dc.Listar_CargoInstitucional();
            grvCargo.DataSource = Cargo.ToList();
            grvCargo.DataBind();
        }
    }
}