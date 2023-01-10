<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="web.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
        <div class="iniciarsesion">
     
       
            <h3>Iniciar Sesion</h3>
            
                <input id="Text1" type="text" placeholder="Usuario" name="Usario" />
            
                <input id="Text2" type="password" placeholder="Contraseña" name="Contraseña" />
       
            
        <b> <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#999999">Olvide mi Contraseña</asp:LinkButton></b>
            

        <asp:Button ID="Button1" Class="ingresar" runat="server" Text="Ingresar" />

        </div>
   
    <br />
   
</asp:Content>
