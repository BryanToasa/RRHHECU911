using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;


namespace CapaDatos
{
    public class Cd_conexion
    {
        public SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GH8860H\SQLEXPRESS;Initial Catalog=RRHHECU911;Integrated Security=True");
        
        
    }
}
