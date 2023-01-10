<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="slider"> <!------------slider----------------->
        <ul>
            <li><asp:Image ID="Image1" runat="server" ImageUrl="~/Image/slider1.jpg" /></li>
            <li><asp:Image ID="Image2" runat="server" ImageUrl="~/Image/slider2.jpg" /></li>
            <li><asp:Image ID="Image3" runat="server" ImageUrl="~/Image/slider3.jpg" /></li>
            <li><asp:Image ID="Image4" runat="server" ImageUrl="~/Image/img-mov1.jpg" /></li>

        </ul>
    </div> 

    <div class="jumbotron">
        <p>¿Desea conocer nuestras promociones? registrese aquí</p>
        <a href="https://localhost:44333/Admin/Registrarse" class="registrarse" >Registrarse</a>
 </div>
    <table class="table">
      <tr>
        <td>
          <asp:ImageButton CssClass="tableimage" ID="ImageButton1" runat="server"  ImageUrl="~/Image/img1.jpg" PostBackUrl="~/Galeria_Servidores.aspx" />
            
            <div>    
               <p>HP</p>
               <p>DELL</p>
               <p>AMD</p>
               <p>COMPAQ</p>
               <p>INTEL</p>
            </div> 
        </td>
         <td>
          <asp:ImageButton CssClass="tableimage" ID="ImageButton2" runat="server" ImageUrl="~/Image/img-im1.jpg"  PostBackUrl="~/Galeria_Impresoras.aspx" />
           <div>
               <p>EPSON</p>
               <p>DELL</p>
               <p>CANON</p>
               <p>HP</p>
               <p>INTEL</p>
          </div>
       </td>
      </tr>
        <tr>
          <td>
            <asp:ImageButton CssClass="tableimage" ID="ImageButton3" runat="server" ImageUrl="~/image/img-mov1.jpg"  PostBackUrl="~/Galeria_Moviles.aspx" />
           <div>
               <p>SAMSUNG</p>
               <p>APPLE</p>
               <p>HUAWEI</p>
               <p>LG</p>
               <p>NOKIA</p>
           </div>
         </td>
        <td>
         <asp:ImageButton CssClass="tableimage" ID="ImageButton4" runat="server" ImageUrl="~/Image/img-air.jpg"  PostBackUrl="~/Galeria_Aires.aspx" />
           <div>
               <p>SAMSUNG</p>
               <p>LG</p>
               <p>TOSHIBA</p>
               <p>HITACHI</p>
               <p>SANYO</p>
          </div>
        </td>
       </tr>
    </table>
    
</asp:Content>
