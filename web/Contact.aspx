<%@ Page Title="Contactanos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="web.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Contactanos</h3>
        <p style="margin-left: 37%">Dejanos tus datos para contartarte.</p> <br />
    <table class="nav-justified" style="margin-left: 430px; width: 35%;">
        <tr>
            <td style="height: 20px; width: 70px">Nombre:</td>
            <td style="height: 20px; width: 305px">
                <asp:TextBox ID="NombreTextBox" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 70px">Correo:</td>
            <td style="width: 305px">
                <asp:TextBox ID="CorreoTextBox" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 70px">Telefono:</td>
            <td style="width: 305px">
                <asp:TextBox ID="TelefonoTextBox" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        
    </table> <br />
    <asp:TextBox ID="CajaTextBox" CssClass="CajaTextBox" runat="server" TextMode="MultiLine" style="margin-left: 430px; margin-right: 110;" Height="108px" Width="310px"></asp:TextBox>
    <p><asp:Label ID="mensajeLabel" runat="server" ForeColor="Red" style="margin-left: 50%" ></asp:Label>
        <p>
            <asp:Button ID="enviarButton" CssClass="enviar" runat="server" Text="Enviar" style="margin-left: 613px" />
        </p> <br /> <br /> 

    <br />
                
       
    

    
    <table class="contactanos" style="margin-left:22%" >
        <tr>
            <td >
                    <address>
                    <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.593815667413!2d-74.0611492855533!3d4.666280143255125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9b01bab04dd7%3A0x4f7df996b8d3cf32!2sSolutek%20Inform%C3%A1tica!5e0!3m2!1ses!2sco!4v1610672538894!5m2!1ses!2sco"
                        width="550" height="300" style="border:1px solid rgba(128, 128, 128, 0.34);" aria-hidden="false" tabindex="0"></iframe></p>
                    &nbsp;</address>
                
            </td>
        </tr>
    </table>

    </asp:Content>
