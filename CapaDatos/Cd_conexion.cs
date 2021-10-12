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
        SqlConnection cn = new SqlConnection(@"Data Source=BRYAN;Initial Catalog=RRHHECU911;Integrated Security=True");
        
    }
}
