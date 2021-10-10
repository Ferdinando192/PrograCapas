<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="capa._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

   

    <asp:Label ID="IngresoLabel" runat="server" Text="Ingresar datos" class="d-flex justify-content-center mb-5 text-success text-uppercase fs-1" Font-Bold="true" ></asp:Label>

    <hr class="mt-5"/>
    <div class="container">

         <!-- PRODUCTOS -->
        <div class="row">
             
            <div class="table-title bg-dark bg-gradient w-100 p-3">
				<div class="row">
					<div class="col-sm-6 ">
						<h2 class="text-light">Administrar <b>Productos</b></h2>
					</div>
					<div class="col-sm-6 d-flex justify-content-end">
                        <button type="button"  class="btn btn-success" data-bs-toggle="modal" data-bs-target="#agregarProductoModal" data-bs-whatever="@mdo">Agregar producto</button>							
					</div>
				</div>
			</div>

      

           <div class="d-flex justify-content-center mt-3"">

              <asp:GridView ID="gvProductos" runat="server" class="table table-striped table-hover table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px" Height="143px" OnRowCommand="gvProductos_RowCommand">
                  <Columns>
                      <asp:ButtonField Text="x" ButtonType="Image" CommandName="eliminarProducto" HeaderText="Eliminar" ImageUrl="~/img/511562_trash can_delete_trash_wastebin_icon.svg"  >
                      <ControlStyle Height="40px" Width="40px" />
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:ButtonField>
                      <asp:ButtonField ButtonType="Image" CommandName="actualizarProducto" HeaderText="Editar" ImageUrl="~/img/edit.svg" Text="editar">
                      <ControlStyle Height="40px" Width="40px" />
                      <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                      </asp:ButtonField>
                  </Columns>
               </asp:GridView>

           </div>
    
        </div>   <hr /><!-- FIN PRODCUTOS -->


        <!-- CATEGORIAS -->
       
          <div class="row">

               <asp:Label ID="Label2" runat="server" Text="CATEGORIAS" class="d-flex justify-content-center mb-5" Font-Bold="true" ></asp:Label>

           <div class="col-7 ">
                <asp:Label ID="nombreC" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombreC" runat="server"></asp:TextBox>
    
               
               <asp:Button ID="btnInsertarCategoria" runat="server" Text="Guardar" class="btn-success"  OnClick="btnInsertarCategoria_Click" />
           </div>

           <div class="col-4">

              <asp:GridView ID="gvCategoria" runat="server" class="table table-striped table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" Width="517px" Height="143px"></asp:GridView>

           </div>
    
        </div>  <hr />
        <!-- FIN CATEGORIAS -->



          <!-- PROVEEDORES -->
       
          <div class="row">

               <asp:Label ID="Label3" runat="server" Text="PROVEEDORES " class="d-flex justify-content-center mb-5" Font-Bold="true" ></asp:Label>

           <div class="col-7 ">
                <asp:Label ID="nombreP" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombreProveedor" runat="server" class="me-3"></asp:TextBox>

                <asp:Label ID="correoP" runat="server" Text="Correo"></asp:Label>
                <asp:TextBox ID="txtCorreoP" runat="server" class="me-5 mb-2"></asp:TextBox>

                <asp:Label ID="TelefonoP" runat="server" Text="Telefono" class="ms-3"></asp:Label>
                <asp:TextBox ID="txtTelefonoP" runat="server" ></asp:TextBox>
    
               
               <asp:Button ID="btnInsertarProveedor" runat="server" Text="Guardar" class="btn-success"  OnClick="btnInsertarProveedor_Click" />
           </div>

           <div class="col-4">

              <asp:GridView ID="gvProveedor" runat="server" class="table table-striped table-hover table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" Width="517px" Height="143px"></asp:GridView>

           </div>
    
        </div>  <hr />
        <!-- FIN PROVEEDORES -->

        
        
    </div>
  
   
    <!-- Modales -->
    <div class="modal fade" id="agregarProductoModal" tabindex="-1" aria-labelledby="agregarProductoLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="agregarProductoModalTitle">Producto</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      
            <div class="mb-3">
                <asp:Label class="form-label" ID="idProducLabel" runat="server"  Text="ID: "></asp:Label>
                <asp:TextBox class="form-control" ID="txtIdProduc" runat="server" ReadOnly="true"></asp:TextBox>
            </div>

            <div class="mb-3">
                <asp:Label class="form-label" ID="NombreLabel" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox  class="form-control" ID="txtNombre" runat="server"></asp:TextBox>
            </div>
               
            <div class="mb-3">
                <asp:Label class="form-label" ID="CategoriaLabel" runat="server" Text="Categoria"></asp:Label>
                <asp:TextBox class="form-control" ID="txtTipo" runat="server"  ></asp:TextBox>
            </div>
               
            <div class="mb-3">
                <asp:Label class="form-label" ID="LabelPrecio" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox class="form-control" ID="txtPrecio" runat="server" ></asp:TextBox>
            </div>
 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
         <asp:Button ID="btnInsertar" runat="server" Text="Insertar" class="btn btn-success"  OnClick="btnInsertar_Click" />
          <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-warning"  OnClick="btnGuardar_Click" />
      </div>
    </div>
  </div>
</div>



</asp:Content>


