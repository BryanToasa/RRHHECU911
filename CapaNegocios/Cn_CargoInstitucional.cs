using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using CapaDatos;


namespace CapaNegocios
{
    public class Cn_CargoInstitucional
    {
        // Registro Cargo Institucional
        public string Nom_Cargo, Esta_Cargo;
        public int id_Cargo;
        public void Registrar_CargoInstitucional()
        {
            Cd_conexion Objconect = new Cd_conexion();
            SqlCommand con;
            con= new SqlCommand("Registro_CargoInstitucional", Objconect.cn);
            con.CommandType = CommandType.StoredProcedure;
            con.Parameters.AddWithValue("@CargoInsti_nom", Nom_Cargo);
            con.Parameters.AddWithValue("@CargoInsti_estado", Esta_Cargo);
            Objconect.cn.Open();
            con.ExecuteNonQuery();
            Objconect.cn.Close();
        }

        // Eliminar Cargo Institucional

        public void Eliminar_CargoInstitucional()
        {
            Cd_conexion Objconect = new Cd_conexion();
            SqlCommand con;
            con= new SqlCommand("Eliminar_CargoInstitucional", Objconect.cn);
            con.CommandType = CommandType.StoredProcedure;
            con.Parameters.AddWithValue("@CargoInsti_id", id_Cargo);
            Objconect.cn.Open();
            con.ExecuteNonQuery();
            Objconect.cn.Close();
        }

        public void Listar_CargoInstitucional()
        {
            Cd_conexion Objconect = new Cd_conexion();
            SqlCommand con;
            SqlDataReader Lectura;
            con = new SqlCommand("Eliminar_CargoInstitucional", Objconect.cn);
            con.CommandType = CommandType.StoredProcedure;
            con.Parameters.AddWithValue("@CargoInsti_id", id_Cargo);
            Objconect.cn.Open();
            Lectura = con.ExecuteReader();
            if (Lectura.Read() == true)
            {
                Nom_Cargo = Convert.ToString(Lectura[1]);
                Esta_Cargo = Convert.ToString(Lectura[2]);
                return;
            }
            Objconect.cn.Close();
        }

    }
}
