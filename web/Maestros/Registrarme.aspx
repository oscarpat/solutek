<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrarme.aspx.cs" Inherits="web.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="registrarme">
        <h3>Registrarme</h3>
        <input id="" type="text" placeholder="Nombre" name="Nombre" />
        <input id="" type="text" placeholder="Correo" name="Correo" />
        <input id="" type="text" placeholder="Telefono" name="Telefono" />
        <input id="Password1" type="password" placeholder="Contraseña" name="Contraseña" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" CssClass="elegir" runat="server" >
            <asp:ListItem Value="Elegir"></asp:ListItem>
            <asp:ListItem>Usuario</asp:ListItem>
            <asp:ListItem>Administrador</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" Class="guardar" runat="server" Text="Guardar" />


    </div>
</asp:Content>
