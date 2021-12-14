using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocios;
using System.Data.SqlClient;
using System.Data;

namespace RRHHECU911.vistas.data
{
    public partial class cargo : System.Web.UI.Page
    {
        private DataClasses1DataContext dc = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Listar_Cargo_Institucional();
                Llenar_Lista_Cargo();  
            }
        }
        //LISTAR
        private void Listar_Cargo_Institucional()
        {
            GridView1.DataSource = from Tbl_Cargo_Institucional in dc.Listar_Estado_Activo_Cargo_Institucional()
                                   select Tbl_Cargo_Institucional;
            GridView1.DataBind();
        }
        protected void Btn_RegistarCargo_Click(object sender, EventArgs e)
        {
            Registar_Cargo_Institucional();
            Llenar_Lista_Cargo();
        }
        //REGISTRAR
        private void Registar_Cargo_Institucional()
        {
            if (string.IsNullOrEmpty(Drop_Cargo.Text) || string.IsNullOrEmpty(Drop_Cargo.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);
            }
            else
            {

                dc.Registro_Cargo_Institucional(Drop_Cargo.SelectedItem.Text,Convert.ToInt32(Drop_Individual.SelectedValue),TxtEstadoCargo.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Datos Guardados ^-^')", true);
                Listar_Cargo_Institucional();
                Limpiar_Pantalla();
            }
        }
        //ACTUALIZAR
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int Cargo_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Nombre_Cargo = (row.FindControl("txtNomCargo") as TextBox).Text;

            Tbl_Cargo_Institucional Cargo = (from q in dc.Tbl_Cargo_Institucional
                                             where q.Id_Cargo_Institucional == Cargo_id
                                             select q).First();
            Cargo.Nom_Cargo_Institucional = Nombre_Cargo;
            dc.SubmitChanges();
            GridView1.EditIndex = -1;
            Listar_Cargo_Institucional();
        }
        //ElIMINAR
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = Convert.ToInt32(e.CommandArgument);

            //CODIGO ELIMINAR
            if (e.CommandName == "Eliminar")
            {
                Tbl_Cargo_Institucional CINT = new Tbl_Cargo_Institucional();
                // VARIABLE CON LAS INICIO
                CINT = Cn_Cargos.ObtenerCargoXid(codigo);
                if (CINT != null)
                {
                    Cn_Cargos.delete(CINT);
                    Listar_Cargo_Institucional();
                }
            }

        }
        //LIMPIAR PANTALLA
        private void Limpiar_Pantalla()
        {;
        }
        protected void grvCargo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.Listar_Cargo_Institucional();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.Listar_Cargo_Institucional();

        }
        protected void lnbActualizar_Click(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
       
        private void Llenar_Lista_Cargo()
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
            Drop_Individual .DataSource = Consultar("SELECT * FROM Tbl_Partida_Individual Where Id_Partida_Individual=" + Id_Individual);
            Drop_Individual.DataTextField = "Num_Partida_Individual";
            Drop_Individual.DataValueField = "Id_Partida_Individual";
            Drop_Individual.DataBind();
            Drop_Individual.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
        }

        public DataSet Consultar(String strSQL)
        {
            string strconn = "Data Source=DESKTOP-GH8860H\\SQLEXPRESS;Initial Catalog=ECURRHH911;Integrated Security=True";
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
