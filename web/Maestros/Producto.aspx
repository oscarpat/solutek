<%@ Page Title="Producto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="web.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="tableproducto">
        <tr>
            <td class="producto">
                 <h3>Producto</h3>

                <input id="" type="text" placeholder="Nombre" />

                <input id="" type="text" placeholder="Marca" />

                <input id="" type="text" placeholder="Valor" />

                <input id="" type="text" placeholder="Stock" />


                <div> <asp:Button Class="guardar" ID="Button1" runat="server" Text="Guardar" /></div>

   
    
    <table class="nav-justified" style="width: 108%">
        <tr>
            <td style="width: 241px; height: 21px;">Nombre</td>
            <td style="width: 204px; height: 21px;">Marca</td>
            <td style="width: 165px; height: 21px;">Valor</td>
            <td style="width: 135px" height: 21px;>Stock</td>
        </tr>
     </table>
            </td>
            <td style="width: 466px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/slider2.jpg" />
            </td>
        </tr>
   
</table>


</asp:Content>
