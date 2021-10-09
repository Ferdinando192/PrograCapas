using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.BLL
{
    public class CATEGORIA
    {
        [PrimaryKey]
        [AutoIncrement]
        public int IdCategoria { get; set; }
        public string Nombre { get; set; }
      
    }
}
