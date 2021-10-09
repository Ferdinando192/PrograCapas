<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="capa._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
   

    <asp:Label ID="IngresoLabel" runat="server" Text="Ingresar datos" class="d-flex justify-content-center mb-5 text-success text-uppercase fs-1" Font-Bold="true" ></asp:Label>

    <hr class="mt-5"/>
    <div class="container">

         <!-- PRODUCTOS -->
        <div class="row">

             <asp:Label ID="Label1" runat="server" Text="PRODUCTOS" class="d-flex justify-content-center mb-5" Font-Bold="true" ></asp:Label>

           <div class="col-7 ">

               <asp:Label ID="idProducLabel" runat="server"  Text="ID"></asp:Label>
                <asp:TextBox ID="txtIdProduc" runat="server" ReadOnly="true"></asp:TextBox>

                <asp:Label ID="NombreLabel" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    
                <asp:Label ID="CategoriaLabel" runat="server" Text="Categoria"></asp:Label>
                <asp:TextBox ID="txtTipo" runat="server" Width="50px" ></asp:TextBox>
    
                <asp:Label ID="LabelPrecio" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox ID="txtPrecio" runat="server" Width="90px"></asp:TextBox>
               
               <asp:Button ID="btnInsertar" runat="server" Text="Insertar" class="btn-success"  OnClick="btnInsertar_Click" />
               <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn-primary" OnClick="btnGuardar_Click" />

           </div>

           <div class="col-4">

              <asp:GridView ID="gvProductos" runat="server" class="table table-striped table-hover " CellPadding="4" ForeColor="#333333" GridLines="None" Width="517px" Height="143px" OnRowCommand="gvProductos_RowCommand">
                  <Columns>
                      <asp:ButtonField Text="x" ButtonType="Image" CommandName="eliminarProducto" HeaderText="Eliminar" ImageUrl="~/img/511562_trash can_delete_trash_wastebin_icon.svg"  >
                      <ControlStyle Height="40px" Width="40px" />
                      <ItemStyle HorizontalAlign="Center" />
                      </asp:ButtonField>
                      <asp:ButtonField ButtonType="Image" CommandName="actualizarProducto" HeaderText="Editar" ImageUrl="~/img/edit.svg" Text="editar">
                      <ControlStyle Height="40px" Width="40px" />
                      <ItemStyle HorizontalAlign="Center" />
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

              <asp:GridView ID="gvProveedor" runat="server" class="table table-striped table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" Width="517px" Height="143px"></asp:GridView>

           </div>
    
        </div>  <hr />
        <!-- FIN PROVEEDORES -->

        
        
    </div>
  
   

</asp:Content>


