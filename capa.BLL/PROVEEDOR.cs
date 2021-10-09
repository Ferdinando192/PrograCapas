using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.BLL
{
    public class PROVEEDOR
    {
        [PrimaryKey]
        [AutoIncrement]
        public int IdProveedor { get; set; }
        public string Nombre { get; set; }
        public string Correo { get; set; }
        public decimal Telefono { get; set; }
    }
}
