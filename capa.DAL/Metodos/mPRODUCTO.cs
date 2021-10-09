using capa.BLL;
using capa.DAL;
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
    public class mPRODUCTO : iPRODUCTO {

        private OrmLiteConnectionFactory conexion = new OrmLiteConnectionFactory
            (BD.Default.conexion, SqlServer2014Dialect.Provider);

        public void actualizarProducto(PRODUCTO producto)
        {
            IDbConnection db = conexion.Open();
            db.Update(producto);
        }

        public PRODUCTO buscarProducto(int id)
        {
            IDbConnection db = conexion.Open();
            return db.Select<PRODUCTO>(X => X.ID == id).FirstOrDefault();
        }

        public void eliminarProducto(int id)
        {
            IDbConnection db = conexion.Open();
            db.Delete<PRODUCTO>(X => X.ID == id);
        }

        public void insertarProducto(PRODUCTO producto)
        {
            IDbConnection db = conexion.Open();
            db.Insert(producto);
        }

        public List<PRODUCTO> seleccionarProductos()
        {
            IDbConnection db = conexion.Open();
            return db.Select<PRODUCTO>();
            
        }
    }
}
