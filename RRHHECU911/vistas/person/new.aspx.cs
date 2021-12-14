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
            ListItem i;
            Drop_Genero.Items.Insert(0, new ListItem("(SELECCIONE)","0"));
            i = new ListItem("Masculino", "M");
            Drop_Genero.Items.Add(i);
            i = new ListItem("Femenino", "F");
            Drop_Genero.Items.Add(i);

        }



    }
}