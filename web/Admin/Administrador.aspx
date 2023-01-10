<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="web.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Admin</h3>
    <table class="admin">
        <tr>
            <td>
                <a href="https://localhost:44333/Admin/IniciarSesion">Iniciar Sesion</a>
                <a href="https://localhost:44333/Admin/Registrarse">Registrarse</a>
                <a href="https://localhost:44333/Admin/Producto.aspx">Productos</a>
                <a href="https://localhost:44333/Admin/TipoDocumento.aspx">Tipos Documentos</a>
                <a href="https://localhost:44333/Admin/Clientes.aspx">Clientes</a>
                <a href="https://localhost:44333/Admin/Empleados.aspx">Empleados</a>
                <a href="https://localhost:44333/Admin/Proveedores.aspx">Proveedores</a>
            </td>
        </tr>
    </table>
</asp:Content>
