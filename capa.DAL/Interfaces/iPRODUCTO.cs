using capa.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.DAL.Interfaces
{
    public interface iPRODUCTO
    {

                      //CRUD//

        //SELECT
        List<PRODUCTO> seleccionarProductos();

        //INSERT
        void insertarProducto(PRODUCTO producto);

        //UPDATE
        void actualizarProducto(PRODUCTO producto);

        //DELETE
        void eliminarProducto(int id);

        //SEACH
        PRODUCTO buscarProducto(int id);
    }
}
