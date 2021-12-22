using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using CapaDatos;
using System.Data;
using System.Windows.Forms;

namespace RRHHECU911.vistas.person
{
    public partial class _new : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new DataClasses1DataContext();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Llenar_Lista_Cargos();

            } 
        }

        private void Llenar_Lista_Cargos()
        {
            Drop_Cargo.DataSource = Consultar("SELECT *FROM Tbl_Cargo_Institucional");
            Drop_Cargo.DataTextField = "Nom_Cargo_Institucional";
            Drop_Cargo.DataValueField = "Id_Partida_Individual";
            Drop_Cargo.DataBind();
            Drop_Cargo.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
            Drop_Individual.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
        }
        protected void Drop_Cargo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int Id_Individual = Convert.ToInt32(Drop_Cargo.SelectedValue);
            Drop_Individual.DataSource = Consultar("SELECT * FROM Tbl_Partida_Individual Where Id_Partida_Individual=" + Id_Individual);
            Drop_Individual.DataTextField = "Num_Partida_Individual";
            Drop_Individual.DataValueField = "Id_Partida_Individual";
            Drop_Individual.DataBind();
            Drop_Individual.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
        }

        public DataSet Consultar(String strSQL)
        {
            string strconn = "Data Source=DESKTOP-JAJSGG6\\SQLEXPRESS;Initial Catalog=ECURRHH911;Integrated Security=True";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
    }
}