using capa.BLL;
using capa.DAL.Interfaces;
using capa.DAL.Metodos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace capa
{
    public partial class _Default : Page
    {

        //PRODUCTO
        protected void Page_Load(object sender, EventArgs e)
        {

            listarProductosDataGrid();
            btnGuardar.Visible = false;
            txtIdProduc.Visible = false;
            idProducLabel.Visible = false;

           

        }

        public void listarProductosDataGrid()
        {
            iPRODUCTO interfaz = new mPRODUCTO();
            List<PRODUCTO> lista = interfaz.seleccionarProductos();
            //var listaNombres = lista.Select(x => x.Nombre).ToList();
            gvProductos.DataSource = lista;
            gvProductos.DataBind();

            //CATEGORIA
            iCATEGORIA interfazC = new mCATEGORIA();
            List<CATEGORIA> listaC = interfazC.seleccionarCategorias();
            gvCategoria.DataSource = listaC;
            gvCategoria.DataBind();

            //PROVEEDOR
            iPROVEEDOR interfazP = new mPROVEEDOR();
            List<PROVEEDOR> listaP = interfazP.seleccionarProveedores();
            gvProveedor.DataSource = listaP;
            gvProveedor.DataBind();

            txtIdProduc.Text = "";
            txtNombre.Text = "";
            txtTipo.Text = "";
            txtPrecio.Text = "";
            btnInsertar.Enabled = true;

            


        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
           
            iPRODUCTO iproducto = new mPRODUCTO();
            PRODUCTO producto = new PRODUCTO() {

                Nombre = txtNombre.Text,
                IdCategoria = Convert.ToInt32(txtTipo.Text),
                Precio = Convert.ToDecimal(txtPrecio.Text)
              
         

        };
            

            iproducto.insertarProducto(producto); 
            listarProductosDataGrid();
        }//FIN PRODUCTO


        protected void btnInsertarCategoria_Click(object sender, EventArgs e)
        {
            iCATEGORIA icategoria = new mCATEGORIA();

            CATEGORIA categoria = new CATEGORIA()
            {


                Nombre = txtNombreC.Text
                
            };

            icategoria.insertarCategoria(categoria);
            listarProductosDataGrid();
        }//FIN CATEGORIA


      

        protected void btnInsertarProveedor_Click(object sender, EventArgs e)
        {
            iPROVEEDOR iproveedor = new mPROVEEDOR();

            PROVEEDOR proveedor = new PROVEEDOR()
            {


                Nombre = txtNombreProveedor.Text,
                Correo = txtCorreoP.Text,
                Telefono = Convert.ToInt32(txtTelefonoP.Text)



            };

            iproveedor.insertarProveedor(proveedor);
            listarProductosDataGrid();
        }//FIN Proveedor


        protected void gvProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow fila = gvProductos.Rows[rowIndex];

            if (e.CommandName == "eliminarProducto" )
            {
           

                iPRODUCTO filaProducto = new mPRODUCTO();
                filaProducto.eliminarProducto(Convert.ToInt32(fila.Cells[2].Text));
                listarProductosDataGrid();
            }
            if(e.CommandName == "actualizarProducto")
            {
                btnGuardar.Visible = true;
                btnInsertar.Enabled = false;
                txtIdProduc.Visible = true;
                idProducLabel.Visible = true;
                txtIdProduc.Enabled = false;

                txtIdProduc.Text = fila.Cells[2].Text;
                txtNombre.Text = fila.Cells[3].Text;
                txtTipo.Text = fila.Cells[4].Text;
                txtPrecio.Text = fila.Cells[5].Text;



            }
      
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            iPRODUCTO interfaz = new mPRODUCTO();
            PRODUCTO producto = new PRODUCTO()
            {
                ID = Convert.ToInt32(txtIdProduc.Text),
                Nombre = txtNombre.Text,
                IdCategoria = Convert.ToInt32(txtTipo.Text),
                Precio = Convert.ToDecimal(txtPrecio.Text)
            };

            interfaz.actualizarProducto(producto);
            listarProductosDataGrid();
       
           
        }
    }

       
}
