using capa.BLL;
using capa.DAL.Interfaces;
using ServiceStack.OrmLite;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace capa.DAL.Metodos
{
    public class mCATEGORIA : iCATEGORIA
    {
        private OrmLiteConnectionFactory conexion = new OrmLiteConnectionFactory
          (BD.Default.conexion, SqlServer2014Dialect.Provider);

        public void actualizarCategoria(CATEGORIA categoria)
        {
            IDbConnection db = conexion.Open();
            db.Update(categoria);
        }

        public CATEGORIA buscarCategoria(int idCategoria)
        {
            IDbConnection db = conexion.Open();
            return db.Select<CATEGORIA>(X => X.IdCategoria == idCategoria).FirstOrDefault();
        }

        public void eliminarCategoria(int idCategoria)
        {
            IDbConnection db = conexion.Open();
            db.Delete<CATEGORIA>(X => X.IdCategoria == idCategoria);
        }

        public void insertarCategoria(CATEGORIA categoria)
        {
            IDbConnection db = conexion.Open();
            db.Insert(categoria);
        }

        public List<CATEGORIA> seleccionarCategorias()
        {
            IDbConnection db = conexion.Open();
            return db.Select<CATEGORIA>();

        }

    
    }
}

