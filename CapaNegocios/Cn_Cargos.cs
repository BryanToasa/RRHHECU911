using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocios
{
   
    public class Cn_Cargos
    {
        private static DataClasses1DataContext dc = new DataClasses1DataContext();


        public static Tbl_CargoInstitucional ObtenerCargoXid(int id) {
            var CarId = dc.Tbl_CargoInstitucional.FirstOrDefault(Car => Car.CargoIntsi_id.Equals(id) && Car.CargoInsti_estado == "A");
            return CarId;
                }
        public static void delete(Tbl_CargoInstitucional Car)
        {
            try
            {
                Car.CargoInsti_estado = "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }

    }
}
