using capa.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.DAL.Interfaces
{
    public interface iPROVEEDOR
    {

        //CRUD//

        //SELECT
        List<PROVEEDOR> seleccionarProveedores();

        //INSERT
        void insertarProveedor(PROVEEDOR proveedor);

        //UPDATE
        void actualizarProveedor(PROVEEDOR proveedor);

        //DELETE
        void eliminarProveedor(int id);

        //SEACH
        PROVEEDOR buscarProveedor(int id);

    }
}
