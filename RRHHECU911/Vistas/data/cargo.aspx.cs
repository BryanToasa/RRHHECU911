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
                Llenar_Lista_Cargos();
                Llenar_Lista_Partida_General() ;
                Llenar_Lista_Partida_Individual();

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
            Llenar_Lista_Cargos();
            Llenar_Lista_Partida_General();
            Llenar_Lista_Partida_Individual();
            ListItem i;
            i = new ListItem("Juar", "1");
            Drop_Cargo.Items.Add(i);
        }
        //REGISTRAR
        private void Registar_Cargo_Institucional()
        {
            if (string.IsNullOrEmpty(Drop_Cargo.Text) || string.IsNullOrEmpty(Drop_General.Text) || string.IsNullOrEmpty(Drop_Individual.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Asegurese que los campos esten llenos!!')", true);
            }
            else
            {

                dc.Registro_Cargo_Institucional(Drop_Cargo.SelectedItem.Text,Convert.ToInt32( Drop_General.SelectedValue),Convert.ToInt32( Drop_Individual.SelectedValue), TxtEstadoCargo.Text);
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

            // CODIGO ELIMINAR
            //if (e.CommandName == "Eliminar")
            //{
            //    Tbl_Cargo_Institucional CINT = new Tbl_Cargo_Institucional();
            //    // VARIABLE CON LAS INICIO
            //    CINT = Cn_Cargos.ObtenerCargoXid(codigo);
            //    if (CINT != null)
            //    {
            //        Cn_Cargos.delete(CINT);
            //        Listar_CargoInstitucional();
            //    }
            //}

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
        private void Llenar_Lista_Cargos()
        {
            Drop_Cargo.DataSource = from Tbl_Cargo_Institucional in dc.Listar_Estado_Activo_Cargo_Institucional()
                                    select Tbl_Cargo_Institucional;
            Drop_Cargo.DataTextField = "Nom_Cargo_Institucional";
            Drop_Cargo.DataValueField = "Id_Cargo_institucional";
            Drop_Cargo.DataBind();
            Drop_Cargo.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
        }

        private void Llenar_Lista_Partida_General()
        {
            Drop_General.DataSource = from Tbl_Partida_General in dc.Listar_Estado_Activo_Partida_General()
                                      select Tbl_Partida_General;
            Drop_General.DataTextField = "Numero_Partida_General";
            Drop_General.DataValueField = "Id_Partida_General";
            Drop_General.DataBind();
            Drop_General.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
        }

        private void Llenar_Lista_Partida_Individual()
        {
            Drop_Individual.DataSource = from Tbl_Partida_Individual in dc.Listar_Partida_Individual()
                                       select Tbl_Partida_Individual;
            Drop_Individual.DataTextField = "Num_Partida_Individual";
            Drop_Individual.DataValueField = "Id_Partida_Individual";
            Drop_Individual.DataBind();
            Drop_Individual.Items.Insert(0, new ListItem("(SELECCIONAR)", "0"));
        }
    }
}
