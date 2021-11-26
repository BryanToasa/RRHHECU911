using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
namespace RRHHECU911.vistas.person
{
    public partial class _new : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new  DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Llenar_Lista_Cargos();
            }
        }
        private void Llenar_Lista_Cargos()
        {
            DropCargo.DataSource = from Tbl_CargoInstitucional in dc.ListarXEstadoActivo_CargoInstitucional()
                                   select Tbl_CargoInstitucional;
            DropCargo.DataTextField = "CargoInsti_nom";

            DropCargo.DataValueField = "CargoIntsi_id";
            DropCargo.DataBind();
            DropCargo.Items.Insert(0, new ListItem("[SELECCIONAR]","0"));
        }
    }
}