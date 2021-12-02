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


        public static Tbl_Cargo_Institucional ObtenerCargoXid(int id) {
            var CarId = dc.Tbl_Cargo_Institucional.FirstOrDefault(Car => Car.Id_Cargo_Institucional.Equals(id) && Car.Estado_Cargo_Institucional == "A");
            return CarId;
                }
        public static void delete(Tbl_Cargo_Institucional Car)
        {
            try
            {
                Car.Estado_Cargo_Institucional= "I";
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los datos no han sido eliminados <br/>" + ex.Message);
            }
        }

    }
}
