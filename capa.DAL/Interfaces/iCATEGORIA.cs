
using capa.DAL.Metodos;
using capa.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.DAL.Interfaces
{
    public interface iCATEGORIA
    {

        //CRUD//

        //SELECT
        List<CATEGORIA> seleccionarCategorias();

        //INSERT
        void insertarCategoria(CATEGORIA categoria);

        //UPDATE
        void actualizarCategoria(CATEGORIA categoria);

        //DELETE
        void eliminarCategoria(int idCategoria);

        //SEACH
        CATEGORIA buscarCategoria(int idCategoria);

    }
}
