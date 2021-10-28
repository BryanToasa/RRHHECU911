using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaNegocios;

namespace CapaNegocios
{
    public class Cn_Zona
    {
        private static DataClasses1DataContext dc = new DataClasses1DataContext();

       public static Tbl_Zona ObtenerZonaXid(int Id)
        {
            var ZonaId = dc.Tbl_Zona.FirstOrDefault(Zon => Zon.Zona_id.Equals(Id) && Zon.Zona_estado == "A");
            return ZonaId;

        }
        public static void delete(Tbl_Zona Zon)
        {

            try
            {
                Zon.Zona_estado = "I" ;
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }
    }
}
