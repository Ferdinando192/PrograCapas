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
    public class mPROVEEDOR : iPROVEEDOR
    {
        private OrmLiteConnectionFactory conexion = new OrmLiteConnectionFactory
           (BD.Default.conexion, SqlServer2014Dialect.Provider);

        public void actualizarProveedor(PROVEEDOR proveedor)
        {
            IDbConnection db = conexion.Open();
            db.Update(proveedor);
        }

        public PROVEEDOR buscarProveedor(int id)
        {
            IDbConnection db = conexion.Open();
            return db.Select<PROVEEDOR>(X => X.IdProveedor == id).FirstOrDefault();
        }

        public void eliminarProveedor(int id)
        {
            IDbConnection db = conexion.Open();
            db.Delete<PROVEEDOR>(X => X.IdProveedor == id);
        }

        public void insertarProveedor(PROVEEDOR proveedor)
        {
            IDbConnection db = conexion.Open();
            db.Insert(proveedor);
        }

        public List<PROVEEDOR> seleccionarProveedores()
        {
            IDbConnection db = conexion.Open();
            return db.Select<PROVEEDOR>();

        }

    }
}
