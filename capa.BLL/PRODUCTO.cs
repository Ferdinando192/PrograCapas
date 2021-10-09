using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.BLL
{

    public class PRODUCTO
    {
        [PrimaryKey]
        [AutoIncrement]
        public int ID { get; set; }
        public string Nombre { get; set; }
        public int IdCategoria { get; set; }
        public decimal Precio { get; set; }
        //prop doble tap *ATAJO*
    }
}
